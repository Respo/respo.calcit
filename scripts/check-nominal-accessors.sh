#!/usr/bin/env bash
set -euo pipefail

calcit_bin=${CALCIT_BIN:-calcit}

# 名义类型反例必须在调用参数处拒绝，不能依赖运行时 assert-type 才失败。
expect_argument_failure() {
  local accessor=$1
  local value=$2
  local output
  if output=$("$calcit_bin" eval --dep ./calcit.cirru "respo.util.detect/$accessor $value" 2>&1); then
    printf 'Expected %s to reject %s before execution.\n' "$accessor" "$value" >&2
    exit 1
  fi
  if [[ "$output" != *"[W_FN_ARG_TYPE_MISMATCH]"* || "$output" != *"Function \`respo.util.detect/$accessor\` arg 1 expects type"* ]]; then
    printf 'Unexpected diagnostic for %s:\n%s\n' "$accessor" "$output" >&2
    exit 1
  fi
}

component='(respo.schema/Component :name :probe :effects ([]) :listeners ([]) :tree (%none))'
effect='(respo.schema/Effect :name :probe :coord ([]) :args ([]) :method (fn (args params) &unit))'

for accessor in effect-args effect-name; do
  expect_argument_failure "$accessor" 42
  expect_argument_failure "$accessor" "$component"
done
expect_argument_failure component-effects 42
expect_argument_failure component-effects "$effect"

positive=$(cat <<'CIRRU'
&let (args $ [] |original 42)
  &let (effect $ respo.schema/Effect :name :probe :coord ([]) :args args :method (fn (args params) &unit))
    &let (effects $ [] effect)
      &let (component $ respo.schema/Component :name :probe :effects effects :listeners ([]) :tree (%none))
        assert |preserves-effect-list-identity $ identical? effects $ respo.util.detect/component-effects component
        assert |preserves-effect-args-identity $ identical? args $ respo.util.detect/effect-args effect
        assert= :probe $ respo.util.detect/effect-name effect
CIRRU
)
"$calcit_bin" eval --dep ./calcit.cirru "$positive" >/dev/null
printf 'Nominal accessors: identity checks and 6 static rejection cases passed.\n'
