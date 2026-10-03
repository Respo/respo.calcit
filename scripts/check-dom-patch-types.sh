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

"$calcit_bin" eval --dep ./calcit.cirru \
  'respo.schema/DomPatch :move-element ([]) 0 (%:: Option :some 1)' >/dev/null

expect_failure \
  'a String in a move source index' \
  'but got `:string`' \
  'respo.schema/DomPatch :move-element ([]) |first (%:: Option :none)'

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

legacy_match=$(cat <<'CIRRU'
match (respo.schema/DomPatch :move-element ([]) 0 (%:: Option :none))
  (:replace-prop _p0 _p1 _p2 _p3) &unit
  (:add-prop _p0 _p1 _p2 _p3) &unit
  (:rm-prop _p0 _p1 _p2) &unit
  (:add-style _p0 _p1 _p2 _p3) &unit
  (:replace-style _p0 _p1 _p2 _p3) &unit
  (:rm-style _p0 _p1 _p2) &unit
  (:set-event _p0 _p1 _p2) &unit
  (:rm-event _p0 _p1 _p2) &unit
  (:add-element _p0 _p1 _p2) &unit
  (:rm-element _p0 _p1) &unit
  (:replace-element _p0 _p1 _p2) &unit
  (:append-element _p0 _p1 _p2) &unit
  (:effect-mount _p0 _p1 _p2) &unit
  (:effect-unmount _p0 _p1 _p2) &unit
  (:effect-update _p0 _p1 _p2) &unit
  (:effect-before-update _p0 _p1 _p2) &unit
CIRRU
)

expect_failure \
  'the previous complete DomPatch match without moves' \
  ':move-element' \
  "$legacy_match"

expect_failure \
  'a non-serialized Number in extended DOM attributes' \
  'but got `map<tag, number>`' \
  'respo.core/with-attrs (respo.core/create-element :svg ({})) $ {} $ :width 320'

expect_failure \
  'a collection in extended DOM attributes' \
  'but got `map<tag, list<string>>`' \
  'respo.core/with-attrs (respo.core/create-element :svg ({})) $ {} $ :fill $ [] |red'

printf 'DomPatch positive and negative type checks passed.\n'
