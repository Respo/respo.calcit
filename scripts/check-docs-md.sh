#!/usr/bin/env bash
# Validate Cirru fenced blocks in Markdown via `cr docs check-md`.
#
# Usage:
#   ./scripts/check-docs-md.sh [entry]
#   ENTRY=calcit.cirru ./scripts/check-docs-md.sh
#
# Uses entry `configs.modules` (see calcit.cirru). Extra deps: repeat --dep on CR_EXTRA_DEPS.

set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

ENTRY="${1:-${ENTRY:-calcit.cirru}}"

if command -v cr >/dev/null 2>&1; then
  CR_CMD=(cr)
elif [ -x "./target/debug/cr" ]; then
  CR_CMD=("./target/debug/cr")
elif [ -x "./target/release/cr" ]; then
  CR_CMD=("./target/release/cr")
else
  echo "check-docs-md: need \`cr\` on PATH (or build calcit locally)" >&2
  exit 1
fi

EXTRA_DEP_ARGS=()
if [ -n "${CR_EXTRA_DEPS:-}" ]; then
  # Space-separated module paths, e.g. CR_EXTRA_DEPS="$HOME/.config/calcit/modules/foo/"
  for dep in $CR_EXTRA_DEPS; do
    EXTRA_DEP_ARGS+=(--dep "$dep")
  done
fi

FAILED=0
TOTAL=0

while IFS= read -r file; do
  TOTAL=$((TOTAL + 1))
  echo "check-md: $file"
  cmd=("${CR_CMD[@]}" "$ENTRY" docs check-md -d "$ENTRY")
  if [ "${#EXTRA_DEP_ARGS[@]}" -gt 0 ]; then
    cmd+=("${EXTRA_DEP_ARGS[@]}")
  fi
  cmd+=("$file")
  if "${cmd[@]}"; then
    :
  else
    FAILED=$((FAILED + 1))
  fi
done < <(find . -name '*.md' ! -path './node_modules/*' | sort)

echo ""
echo "Docs check-md: ${TOTAL} files, $((TOTAL - FAILED)) passed, ${FAILED} failed"

if [ "${FAILED}" -gt 0 ]; then
  exit 1
fi
