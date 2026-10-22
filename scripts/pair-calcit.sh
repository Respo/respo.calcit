#!/usr/bin/env bash
# Pair Respo with a Calcit release: the CLI version in deps.cirru and the
# @calcit/procs runtime in package.json must always name the same version.
#
# Usage:
#   ./scripts/pair-calcit.sh <calcit-version>
#
# Run the Downstream workflow with this version as `calcit-version` first; see
# docs/guide/alpha-pairing.md.

set -euo pipefail

VERSION="${1:?usage: pair-calcit.sh <calcit-version>}"
# SemVer: numeric identifiers carry no leading zeroes.
NUM='(0|[1-9][0-9]*)'
PRE='(0|[1-9][0-9]*|[0-9]*[A-Za-z-][0-9A-Za-z-]*)'
if ! [[ "$VERSION" =~ ^$NUM\.$NUM\.$NUM(-$PRE(\.$PRE)*)?$ ]]; then
  echo "pair-calcit: '$VERSION' is not a Calcit release version" >&2
  exit 1
fi

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

sed -i.bak -E "s/\(:calcit-version \|[^)]+\)/(:calcit-version |$VERSION)/" deps.cirru
sed -i.bak -E "s/(\"@calcit\/procs\": \")[^\"]+\"/\1$VERSION\"/" package.json
rm -f deps.cirru.bak package.json.bak

grep -q "(:calcit-version |$VERSION)" deps.cirru || {
  echo "pair-calcit: deps.cirru has no :calcit-version to update" >&2
  exit 1
}
grep -q "\"@calcit/procs\": \"$VERSION\"" package.json || {
  echo "pair-calcit: package.json has no @calcit/procs to update" >&2
  exit 1
}

yarn install
echo "Paired Respo with Calcit $VERSION. Next: caps --strict --ci, then the full gates."
