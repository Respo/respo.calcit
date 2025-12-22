# Respo Development Guide for LLM Agents

**🤖 This guide is specifically designed for LLM agents to develop, debug, and maintain Respo applications.**

📚 **Related Documentation**:

- [← Back to README](../README.md)
- [Beginner Guide](./beginner-guide.md)
- [CLI Tools Reference](../Agents.md)
- [API Reference](./api.md)

---

## Project Structure

The Respo project is a virtual DOM library written in Calcit-js, containing:

- **Main codebase**: `compact.cirru` (2314 lines) - serialized source code
- **Compiled source**: `calcit.cirru` (13806 lines) - full AST representation
- **Namespaces**: 33 total namespaces organized by functionality
- **Version**: 0.16.21
- **Dependencies**: memof (memoization), lilac (UI utilities), calcit-test (testing)

### Core Namespace Organization

**User-facing APIs** (what you typically use):

- `respo.core` - Core APIs: defcomp, div, render!, clear-cache!, etc.
- `respo.comp.space` - Utility component comp-space (=<)
- `respo.comp.inspect` - Debugging component comp-inspect
- `respo.render.html` - HTML generation: make-string, make-html

**Application layer** (in example app):

- `respo.app.core` - Main application logic (\*store, dispatch!, render-app!)
- `respo.app.schema` - Data structures and schemas
- `respo.app.updater` - State management and updates
- `respo.app.comp.*` - Application components (container, task, todolist, wrap, zero)
- `respo.app.style.widget` - Application styles

**Rendering and internal** (low-level):

- `respo.render.diff` - Find differences between virtual DOM trees
- `respo.render.dom` - DOM element creation and manipulation
- `respo.render.effect` - Component lifecycle effects
- `respo.render.patch` - Apply DOM patches
- `respo.controller.client` - Client-side state management (activate-instance!, patch-instance!)
- `respo.controller.resolve` - Event handling and resolution

**Utilities**:

- `respo.util.dom` - DOM utilities
- `respo.util.format` - Element formatting (purify-element, mute-element)
- `respo.util.list` - List utilities (map-val, map-with-idx)
- `respo.util.detect` - Type detection (component?, element?, effect?)
- `respo.css` - CSS utilities
- `respo.cursor` - Cursor management for nested states

---

## Essential Calcit CLI Commands for Development

### 1. Exploration and Discovery

```bash
# List all namespaces in the project
cr query ns

# Get details about a specific namespace (imports, definitions)
cr query ns respo.core
cr query ns respo.app.core

# List all definitions in a namespace
cr query defs respo.core
cr query defs respo.app.updater

# Quick peek at a definition (signature, parameters, docs)
cr query peek respo.core/defcomp
cr query peek respo.core/render!

# Get complete definition as JSON syntax tree
cr query def respo.core/render!
cr query def respo.app.core/dispatch!

# Search for a symbol across all namespaces
cr query find render!
cr query find *store

# Find all usages of a specific definition
cr query usages respo.core/render!
cr query usages respo.app.core/dispatch!
```

### 2. Precise Code Navigation (read-at pattern)

When you need to understand or modify specific parts of a definition:

```bash
# Step 1: Read the complete definition first
cr query def respo.app.updater/updater

# Step 2: Use at to examine the structure (limit depth to reduce output)
cr query at respo.app.updater/updater -p "" -d 1    # View root level

# Step 3: Dive deeper into specific indices
cr query at respo.app.updater/updater -p "2" -d 1   # Check 3rd element
cr query at respo.app.updater/updater -p "2,1" -d 1 # Check 2nd child of 3rd element

# Step 4: Confirm target location before editing
cr query at respo.app.updater/updater -p "2,1,0"    # Final confirmation

# Step 5: Use at for surgical modifications
# JSON inline (recommended)
cr edit at respo.app.updater/updater -p "2,1,0" -o replace -j '"new-value"'
# Or from stdin
echo '["defn", "hello", [], ["println", "|Hello"]]' | cr edit at respo.app.updater/updater -p "2,1,0" -o replace -s -J
```

### 3. Code Modification (updated `cr edit` inputs)

**Input modes:** `cr edit` accepts **Cirru by default**, but Cirru 正文通常通过 stdin 或文件传入；若用 JSON 内联最稳妥。

- Cirru via stdin: `echo '<cirru>' | cr edit ... -s -c`
- Cirru via file: `cr edit ... -f <cirru-file> -c`
- JSON inline: `-j '<json>'` (最简单的单行示例方式)
- JSON from file/stdin: 搭配 `-J/--json-input` 与 `-f/--file` 或 `-s/--stdin`

```bash
# Add or update a definition (JSON inline - recommended)
cr edit def respo.app.core/new-fn -j '["defn", "new-fn", [], ["println", "|hello"]]'

# Add or update from stdin (JSON format)
echo '["defn", "hello", [], ["println", "|Hello"]]' | cr edit def respo.app.core/hello -s -J

# Delete a definition
cr edit rm-def respo.app.core/unused-fn

# Add a new namespace
cr edit add-ns my.new.namespace

# Delete a namespace
cr edit rm-ns my.old.namespace

# Update namespace imports (JSON inline)
cr edit imports respo.app.core -j '[["respo.core", ":refer", ["div", "render!"]], ["respo.app.schema", ":as", "schema"]]'

# Add/remove module dependencies
cr edit add-module "path/to/module"
cr edit rm-module "path/to/module"
```

### 4. Project Configuration

```bash
# Get project configuration (init-fn, reload-fn, version)
cr query config

# Set project configuration
cr edit config version "0.16.22"
cr edit config init-fn "respo.main/main!"
cr edit config reload-fn "respo.main/reload!"
```

### 5. Documentation and Language

```bash
# Check for syntax errors and warnings
cr --check-only
cr js --check-only

# Get language documentation
cr docs api render!
cr docs ref component
cr docs list-api     # List all API docs
cr docs list-guide   # List all guide docs

# Parse Cirru code to JSON (for understanding syntax)
cr cirru parse '(div {} (<> "hello"))'

# Format JSON to Cirru code
cr cirru format '["div", {}, ["<>", "hello"]]'
```

---

## Development Workflow for LLM Agents

### Step 1: Understand the Problem

```bash
# Always start by exploring related code
cr query ns respo.app.updater             # Understand state management
cr query find my-function-name            # Find where it's defined/used
cr query usages respo.core/render!        # See how render! is used
```

### Step 2: Implement the Solution

Use the **precise editing pattern** for complex changes:

```bash
# 1. Read the whole definition
cr query def namespace/function-name

# 2. Map out the structure with at
cr query at namespace/function-name -p "" -d 1

# 3. Navigate to target position
cr query at namespace/function-name -p "2,1" -d 1

# 4. Make the change (JSON inline recommended)
cr edit at namespace/function-name -p "2,1,0" -o replace -j '["new", "code"]'

# Or from stdin (JSON format)
echo '["new", "code"]' | cr edit at namespace/function-name -p "2,1,0" -o replace -s -J

# 5. Verify
cr query at namespace/function-name -p "2,1"
```

### Step 3: Test and Validate

```bash
# Check syntax without running
cr --check-only

# Compile to JavaScript and check for errors
cr js --check-only

# Run the app once to test
cr -1

# Compile to JavaScript once
cr -1 js

# Watch mode (will call reload! on code changes)
cr
```

### Step 4: Debug Issues

```bash
# Check for error messages
cr query error

# Read error stack traces
cat .calcit-error.cirru  # (if it exists)

# Search for the problematic code
cr query find problem-symbol
cr query usages namespace/definition

# Review the definition in detail
cr query def namespace/definition
```

---

## Common Patterns and Best Practices

### 1. Component Definition Pattern

```cirru
; Standard component structure
defcomp comp-name (param1 param2 & options)
  div $ {}
    :class-name "|component-name"
    :style $ comp-style
  <> "|Content"

; With effects
defcomp comp-with-effect (content)
  []
    effect-name
    div $ {} (<> content)

; With state handling
defcomp comp-stateful (data dispatch!)
  let
    states (>> data :my-states)
  div $ {}
    :on-click $ fn (e)
      dispatch! [:action-name value]
```

### 2. State Management Pattern

```cirru
; Define store atom at app.core level
defatom *store $ {}
  :states $ {}
  :data $ {}

; Create dispatcher
defn dispatch! (op)
  reset! *store (updater @*store op)

; Updater function pattern
defn updater (store op)
  tag-match op
    (:action-name value) $
      assoc store :data (process-action (:data store) value)
    (:nested-action id op2) $
      update-in store [:data :nested id] (process-nested op2)
    _ store
```

### 3. Rendering Pattern

```cirru
; Initial render
defn render-app! ()
  render! mount-point (comp-container @*store) dispatch!

; Watch for store changes
add-watch *store :changes $ fn ()
  render-app!

; Hot reload with cache clearing
defn reload! ()
  remove-watch *store :changes
  add-watch *store :changes $ fn ()
    render-app!
  clear-cache!
  render-app!
```

### 4. DOM Element Creation

```cirru
; Using predefined elements (defn wrappers for create-element)
div $ {} (<> "text")
button $ {} (<> "Click me")
input $ {:value "|default"}
span $ {:class-name "|style-name"} (<> "content")

; Dynamic elements with create-element
create-element :custom-tag $ {:prop-name "|value"}
  <> "|child"

; List rendering with list->
list-> $ {}
  :style $ {} (:display "|flex")
  , $ {}
    :a $ comp-item item-1
    :b $ comp-item item-2
    :c $ comp-item item-3
```

### 5. Styling Pattern

```cirru
; Define styles as maps
def style-container $ {}
  :display "|flex"
  :padding "|10px"
  :background-color "|#f0f0f0"

; Conditional styles
defn style-for-state (state)
  if (= state :active)
    assoc style-container :background-color "|#3388ff"
    style-container

; Merge styles
let
  base $ {} (:color "|black")
  extended $ merge base $ {} (:font-size 14)
  extended
```

### 6. Event Handling

```cirru
; Simple click handler
div
  {}
    :on-click $ fn (e dispatch!)
      dispatch! [:button-clicked]

; Input with value tracking
input
  {}
    :value "|current-value"
    :on-input $ fn (e dispatch!)
      let
        value (e.target.value)
      dispatch! [:input-changed value]

; Keyboard events
div
  {}
    :on-keydown $ fn (e dispatch!)
      when (= (e.key) "|Enter")
        dispatch! [:submit-form]
```

---

## Debugging Common Issues

### Issue: Component not re-rendering

**Diagnosis**:

```bash
# Check if render-app! is being called
cr query find render-app!
cr query usages respo.main/render-app!

# Verify store watcher is set up
cr query def respo.app.core/dispatch!
cr query def respo.main/main!
```

**Solution Pattern**:

```cirru
; Ensure watch is on *store
add-watch *store :changes $ fn ()
  render-app!

; Ensure clear-cache! is called on reload
defn reload! ()
  remove-watch *store :changes
  clear-cache!
  add-watch *store :changes $ fn ()
    render-app!
  render-app!
```

### Issue: State not updating

**Diagnosis**:

```bash
# Check updater function logic
cr query def respo.app.updater/updater

# Verify dispatch! is calling updater correctly
cr query def respo.app.core/dispatch!

# Check the state path in component
cr query def respo.app.comp.container/comp-container
```

**Solution Pattern**:

```cirru
; Verify tag-match pattern matches dispatched action
tag-match op
  (:action-name params) $
    ; Make sure return value is updated store
    assoc store :data new-value
  _ store  ; Default case needed!

; Ensure dispatch! is called with correct tuple
dispatch! [:action-name actual-value]
```

### Issue: Component effects not triggering

**Diagnosis**:

```bash
# Check effect definition
cr query def respo.core/defeffect  # macro documentation

# Find effect in component
cr query find my-effect
cr query usages respo.app.comp.task/my-effect
```

**Solution Pattern**:

```cirru
; Effects must be first in component body
defcomp comp-with-effect (props)
  []
    effect-name param1 param2  ; First!
    div $ {}                   ; Then render
      <> "|content"

; Effect must match action lifecycle
defeffect my-effect (initial-value)
  (action element at-place?)
  when (= action :mount)
    do (println "|mounted")
  when (= action :update)
    do (println "|updated")
```

### Issue: Hot reload breaking state

**Diagnosis**:

```bash
# Check reload! function
cr query def respo.main/reload!

# Verify clear-cache! is called
cr query usages respo.core/clear-cache!
```

**Solution Pattern**:

```cirru
; clear-cache! must be called during reload
defn reload! ()
  remove-watch *store :changes
  clear-cache!  ; Critical!
  add-watch *store :changes $ fn ()
    render-app!
  render-app!
```

---

## Modification Strategy: Safe Editing Guide

### Before any edit, follow this checklist:

1. **Understand the context**

   ```bash
   cr query ns namespace-name  # See imports and doc
   cr query peek namespace-name/def-name  # See signature
   ```

2. **Map the exact location**

   ```bash
   cr query at namespace-name/def-name -p "" -d 2  # Overview
   cr query at namespace-name/def-name -p "2" -d 2  # Check section
   cr query at namespace-name/def-name -p "2,1" -d 2  # Precise location
   ```

3. **Make surgical change**

```bash
# JSON inline (recommended)
cr edit at namespace-name/def-name -p "2,1,0" -o replace -j '"new-value"'

# Or from stdin (JSON format)
echo '"new-value"' | cr edit at namespace-name/def-name -p "2,1,0" -o replace -s -J
```

4. **Verify immediately**
   ```bash
   cr query at namespace-name/def-name -p "2,1"  # Confirm change
   cr --check-only  # Verify syntax
   ```

### Common edit operations:

```bash
# Replace a value (JSON inline)
cr edit at ns/def -p "2,1,0" -o replace -j '"new-value"'

# Insert before a position (JSON)
cr edit at ns/def -p "2,1" -o insert-before -j '["new", "element"]'

# Insert after a position (JSON)
cr edit at ns/def -p "2,1" -o insert-after -j '["new", "element"]'

# Delete a node
cr edit at ns/def -p "2,1,0" -o delete

# Insert as child (append, from stdin)
echo '"child-value"' | cr edit at ns/def -p "2,1" -o insert-child -s -J
```

---

## Testing and Validation

### Basic validation

```bash
# Syntax check only (no execution)
cr --check-only

# Check JavaScript compilation
cr js --check-only

# Run application once
cr -1

# Compile to JS once
cr -1 js
```

### Test-driven development

```bash
# Look at test files
cr query defs respo.test.main
cr query def respo.test.main/test-fn

# Run tests
cr -1  ; (if init-fn runs tests)
```

### Error diagnosis

```bash
# View error file
cr query error
cat .calcit-error.cirru

# Search for the problematic definition
cr query find problem-name

# Check the full definition
cr query def namespace/problem-name

# Validate dependencies
cr query ns namespace-name  # Check imports
```

---

## Important Notes for LLM Agents

### ⚠️ Critical Rules

1. **NEVER directly edit `calcit.cirru` or `compact.cirru`** with text editors

   - Use `cr edit` commands instead
   - These are serialized AST structures, not human-readable code

2. **ALWAYS use relative paths for documentation links**

   - Use `../` and `../../` for navigation
   - This allows easy file discovery for LLM tools

3. **ALWAYS check syntax before assuming it's correct**

   ```bash
   cr --check-only
   ```

4. **ALWAYS verify modifications work**

   ```bash
   cr query at namespace/def -p "modified-path"  # Confirm change
   cr --check-only  # Check syntax
   cr -1  # Test run
   ```

5. **Use peek before def** to reduce token consumption
   ```bash
   cr query peek ns/def  # Light summary
   cr query def ns/def  # Full AST (use only if needed)
   ```

### 🎯 Optimization Tips for Token Usage

```bash
# Fast exploration with limited output
cr query peek respo.core/defcomp              # 5-10 lines
cr query defs respo.app.updater               # Quick list

# Slower but comprehensive
cr query def respo.app.updater/updater        # Full JSON AST

# Use -d flag to limit JSON depth
cr query at ns/def -p "2,1" -d 1              # Shallow
cr query at ns/def -p "2,1" -d 3              # Medium
cr query at ns/def -p "2,1"                   # Full (default)

# Search before diving deep
cr query find my-function                     # Find location first
cr query usages ns/def                        # See usage patterns
```

### 📖 Documentation Strategy

When stuck, use these resources in order:

1. This file (Respo-Agent.md) - you are here
2. [README.md](../README.md) - Project overview and index
3. [Beginner Guide](./beginner-guide.md) - Conceptual introduction
4. [API Reference](./api.md) - Specific API documentation
5. [Guide docs](./guide/) - Detailed topics
6. `cr docs api <keyword>` - Language documentation
7. Project code itself: `cr query ns <namespace>`

---

## Quick Reference

### Most Used Commands

```bash
# Exploration (read-only, no changes)
cr query ns                              # List namespaces
cr query ns respo.core                   # Read namespace details
cr query defs respo.app.core             # List definitions
cr query peek respo.core/render!         # Quick peek
cr query def respo.core/render!          # Full definition
cr query find render!                    # Search globally
cr query usages respo.core/render!       # Find usages

# Navigation (precise editing)
cr query at ns/def -p "" -d 1            # View structure
cr query at ns/def -p "2,1" -d 1         # Drill down
cr query at ns/def -p "2,1,0"            # Confirm target

# Modification (careful!)
cr edit def ns/def -j '["defn", "func", [], "body"]'
cr edit at ns/def -p "2,1,0" -o replace -j '"value"'
cr edit rm-def ns/def

# Validation
cr --check-only                          # Check syntax
cr query error                           # View errors
cr -1                                    # Test run
```

### File Paths in Documentation

When referring to files from within `docs/`:

- `./` - same directory
- `../` - parent (docs/ to root)
- `../../` - grandparent (docs/apis/ to root)

Example from `docs/apis/defcomp.md`:

```markdown
- [Back to README](../../README.md)
- [API Overview](../api.md)
- [Another API](./render!.md)
```

---

This guide evolves as the project grows. Last updated: 2025-12-22
