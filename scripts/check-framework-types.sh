#!/usr/bin/env bash
set -euo pipefail

calcit_bin=${CALCIT_BIN:-calcit}

"$calcit_bin" calcit.cirru --warn-dyn-method --check-only

# 检查未必被 demo 调用的框架定义；空的 respo.schema.listener 不作为覆盖项。
"$calcit_bin" calcit.cirru --warn-dyn-method analyze check-public \
  --ns respo.comp.global-keydown \
  --ns respo.comp.inspect \
  --ns respo.comp.space \
  --ns respo.controller.client \
  --ns respo.controller.resolve \
  --ns respo.core \
  --ns respo.css \
  --ns respo.cursor \
  --ns respo.dom \
  --ns respo.ffi.browser \
  --ns respo.memo \
  --ns respo.render.diff \
  --ns respo.render.dom \
  --ns respo.render.effect \
  --ns respo.render.events \
  --ns respo.render.html \
  --ns respo.render.patch \
  --ns respo.resource \
  --ns respo.schema \
  --ns respo.util.detect \
  --ns respo.util.dom \
  --ns respo.util.format \
  --ns respo.util.list \
  --summary-only --format json
