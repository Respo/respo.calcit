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

for accessor in effect-args effect-name effect-method; do
  expect_argument_failure "$accessor" 42
  expect_argument_failure "$accessor" "$component"
done
for accessor in component-effects component-listeners component-name component-tree; do
  expect_argument_failure "$accessor" 42
  expect_argument_failure "$accessor" "$effect"
done
for accessor in element-event element-attrs element-style listener-handler; do
  expect_argument_failure "$accessor" 42
  expect_argument_failure "$accessor" "$component"
done

positive=$(cat <<'CIRRU'
&let (args $ [] |original 42)
  &let (effect $ respo.schema/Effect :name :probe :coord ([]) :args args :method (fn (args params) &unit))
    &let (effects $ [] effect)
      &let (component $ respo.schema/Component :name :probe :effects effects :listeners ([]) :tree (%none))
        assert |preserves-effect-list-identity $ identical? effects $ respo.util.detect/component-effects component
        assert |preserves-effect-args-identity $ identical? args $ respo.util.detect/effect-args effect
        assert |preserves-effect-method-identity $ identical? (:method effect) $ respo.util.detect/effect-method effect
        assert= :probe $ respo.util.detect/effect-name effect
CIRRU
)
"$calcit_bin" eval --dep ./calcit.cirru "$positive" >/dev/null

fields_positive=$(cat <<'CIRRU'
&let (attrs $ [] ([] :id |probe))
  &let (styles $ [] ([] :color |red))
    &let (events $ {} (:click nil))
      &let (element $ respo.schema/Element :name :span :coord (%none) :attrs attrs :style styles :event events :children ([]) :ref nil)
        assert |preserves-attrs-identity $ identical? attrs $ respo.util.detect/element-attrs element
        assert |preserves-style-identity $ identical? styles $ respo.util.detect/element-style element
        assert |preserves-event-map-identity $ identical? events $ respo.util.detect/element-event element
        &let (handler $ fn (payload) &unit)
          &let (listener $ respo.schema/RespoListener :name :probe :handler handler)
            assert |preserves-handler-identity $ identical? handler $ respo.util.detect/listener-handler listener
            &let (listeners $ [] listener)
              &let (component $ respo.schema/Component :name :probe :effects ([]) :listeners listeners :tree (%some (respo.schema/RenderNode :element element)))
                assert= :probe $ respo.util.detect/component-name component
                assert |preserves-listeners-identity $ identical? listeners $ respo.util.detect/component-listeners component
                assert |preserves-tree-payload-identity $ identical? element $ option:unwrap $ respo.util.detect/component-tree component
                &let (outer-component $ respo.schema/Component :name :outer :effects ([]) :listeners ([]) :tree (%some (respo.schema/RenderNode :component component)))
                  assert |preserves-component-payload-identity $ identical? component $ option:unwrap $ respo.util.detect/component-tree outer-component
                &let (empty-component $ respo.schema/Component :name :probe :effects ([]) :listeners listeners :tree (%none))
                  assert |preserves-none-tree $ option:none? $ respo.util.detect/component-tree empty-component
CIRRU
)
"$calcit_bin" eval --dep ./calcit.cirru "$fields_positive" >/dev/null
printf 'Nominal accessors: identity checks and 22 static rejection cases passed.\n'
