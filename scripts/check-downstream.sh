#!/usr/bin/env bash
# Check one downstream project against this Respo checkout.
#
# Usage:
#   ./scripts/check-downstream.sh <owner/repo> [ref]
#
# Clones the project, installs its pinned modules with caps, then points its
# `respo.calcit` module at this checkout. When a step fails, it runs again with
# a baseline Respo: the release the project pins, or the checkout named by
# DOWNSTREAM_BASELINE (CI passes the pull request's base branch).
#   regression     passes with the baseline, fails with this checkout
#   needs upgrade  fails with the baseline too (toolchain or project issue)
# The script exits 1 on a regression. "needs upgrade" exits 0 unless
# DOWNSTREAM_REQUIRE_GREEN=1, which an alpha pairing gate uses.
# Results go to stdout and, in CI, to $GITHUB_STEP_SUMMARY.
# Set DOWNSTREAM_TOKEN to clone private repositories, and DOWNSTREAM_STRICT=1
# to add `fix --workflow strict --verify`, which takes 4 to 30 minutes a project.

set -uo pipefail

REPO="${1:?usage: check-downstream.sh <owner/repo> [ref]}"
REF="${2:-}"
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
WORK="${DOWNSTREAM_WORKDIR:-$ROOT/tmp/downstream}"
DIR="$WORK/${REPO//\//__}"
CALCIT_VERSION="$(calcit --version | awk '{print $NF}')"

if [ -n "${DOWNSTREAM_TOKEN:-}" ]; then
  URL="https://x-access-token:${DOWNSTREAM_TOKEN}@github.com/${REPO}.git"
else
  URL="https://github.com/${REPO}.git"
fi

rm -rf "$DIR"
mkdir -p "$WORK"
CLONE_ARGS=(--depth 1)
if [ -n "$REF" ]; then
  CLONE_ARGS+=(--branch "$REF")
fi
if ! git clone -q "${CLONE_ARGS[@]}" "$URL" "$DIR"; then
  echo "check-downstream: cannot clone $REPO (private repositories need DOWNSTREAM_TOKEN)" >&2
  exit 2
fi
cd "$DIR" || exit 2
HEAD_SHA="$(git rev-parse --short HEAD)"

RESULTS=()
FAILED=0
REGRESSION=0
BASELINE=""
LOG_DIR="$DIR/.downstream-logs"
mkdir -p "$LOG_DIR"

run_step() {
  local name="$1"
  shift
  local log="$LOG_DIR/$name.log"
  echo "::group::$REPO $name"
  local started=$SECONDS
  STEP_OK=0
  if "$@" >"$log" 2>&1; then
    STEP_OK=1
    RESULTS+=("| $name | pass | $((SECONDS - started))s |")
    tail -n 5 "$log"
  elif [ -z "$BASELINE" ]; then
    RESULTS+=("| $name | **fail** | $((SECONDS - started))s |")
    FAILED=1
    tail -n 40 "$log"
  else
    tail -n 40 "$log"
    echo "check-downstream: $name failed, retrying with the baseline Respo at $BASELINE"
    ln -sfn "$BASELINE" .calcit/modules/respo.calcit
    if "$@" >"$log.pinned" 2>&1; then
      RESULTS+=("| $name | **regression** | $((SECONDS - started))s |")
      REGRESSION=1
    else
      RESULTS+=("| $name | needs upgrade | $((SECONDS - started))s |")
    fi
    ln -sfn "$ROOT" .calcit/modules/respo.calcit
    FAILED=1
  fi
  echo "::endgroup::"
}

link_respo() {
  # caps resolves the pinned Respo release; replace it with this checkout.
  # The version warning is expected while the project pins an older toolchain.
  caps --ci &&
    BASELINE="${DOWNSTREAM_BASELINE:-$(readlink .calcit/modules/respo.calcit)}" &&
    ln -sfn "$ROOT" .calcit/modules/respo.calcit
}

build_js() {
  rm -rf js-out && calcit calcit.cirru js
}

bundle() {
  # The emitted JS imports @calcit/procs, which must match the compiler.
  npm install --no-save --no-package-lock --no-audit --no-fund &&
    npm install --no-save --no-package-lock --no-audit --no-fund "@calcit/procs@$CALCIT_VERSION" &&
    npx --no-install vite build --base=./ --logLevel warn
}

run_step modules link_respo
if [ "$FAILED" = 0 ]; then
  run_step check-only calcit calcit.cirru --check-only
  if [ "${DOWNSTREAM_STRICT:-0}" = 1 ]; then
    run_step strict-verify calcit calcit.cirru fix --workflow strict --verify
  fi
  run_step js build_js
  # Bundling a missing js-out would only repeat the js failure.
  if [ "$STEP_OK" = 1 ] && [ -f package.json ] && grep -q '"vite"' package.json; then
    run_step bundle bundle
  fi
fi

BASELINE_LABEL="pinned release"
if [ -n "${DOWNSTREAM_BASELINE:-}" ]; then
  BASELINE_LABEL="$DOWNSTREAM_BASELINE"
fi
REPORT="$(
  printf '### %s @ %s (Calcit %s)\n\n' "$REPO" "$HEAD_SHA" "$CALCIT_VERSION"
  printf 'Baseline Respo: %s\n\n' "$BASELINE_LABEL"
  printf '| step | result | time |\n|---|---|---|\n'
  printf '%s\n' "${RESULTS[@]}"
)"
echo "$REPORT"
if [ -n "${GITHUB_STEP_SUMMARY:-}" ]; then
  printf '%s\n\n' "$REPORT" >>"$GITHUB_STEP_SUMMARY"
fi
if [ "$REGRESSION" = 1 ]; then
  exit 1
fi
if [ "$FAILED" = 1 ] && [ "${DOWNSTREAM_REQUIRE_GREEN:-0}" = 1 ]; then
  exit 1
fi
exit 0
