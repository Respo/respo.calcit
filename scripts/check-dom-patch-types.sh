#!/usr/bin/env bash

set -euo pipefail

calcit_bin=${CALCIT_BIN:-calcit}

expect_failure() {
  local label=$1
  local expected=$2
  local snippet=$3
  local output

  if output=$("$calcit_bin" eval --dep ./calcit.cirru "$snippet" 2>&1); then
    printf 'Expected %s to fail type checking, but it passed.\n' "$label" >&2
    exit 1
  fi
  if [[ "$output" != *"$expected"* ]]; then
    printf 'Expected %s diagnostic to contain: %s\n%s\n' "$label" "$expected" "$output" >&2
    exit 1
  fi
}

"$calcit_bin" eval --dep ./calcit.cirru \
  'respo.schema/DomPatch :rm-element ([]) ([])' >/dev/null

expect_failure \
  'a Number in a Tag payload slot' \
  'but got `:number`' \
  'respo.schema/DomPatch :rm-prop ([]) ([]) 42'

expect_failure \
  'a Recollect-style application Op used as DomPatch' \
  'expects type `list<type respo.schema/DomPatch>`' \
  'respo.test.dom/accept-dom-patches ([] (respo.app.schema/Op :clear))'

expect_failure \
  'a non-exhaustive DomPatch match' \
  'is not exhaustive' \
  'match (respo.schema/DomPatch :rm-element ([]) ([])) ((:rm-element _coord _n-coord) &unit)'

printf 'DomPatch positive and negative type checks passed.\n'
