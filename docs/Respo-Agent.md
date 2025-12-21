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
cr query ls-ns

# Get details about a specific namespace (imports, definitions)
cr query read-ns respo.core
cr query read-ns respo.app.core

# List all definitions in a namespace
cr query ls-defs respo.core
cr query ls-defs respo.app.updater

# Quick peek at a definition (signature, parameters, docs)
cr query peek-def respo.core defcomp
cr query peek-def respo.core render!

# Get complete definition as JSON syntax tree
cr query read-def respo.core render!
cr query read-def respo.app.core dispatch!

# Search for a symbol across all namespaces
cr query find-symbol render!
cr query find-symbol *store

# Find all usages of a specific definition
cr query usages respo.core render!
cr query usages respo.app.core dispatch!
```

### 2. Precise Code Navigation (read-at pattern)

When you need to understand or modify specific parts of a definition:

```bash
# Step 1: Read the complete definition first
cr query read-def respo.app.updater updater

# Step 2: Use read-at to examine the structure (limit depth to reduce output)
cr query read-at respo.app.updater updater -p "" -d 1    # View root level

# Step 3: Dive deeper into specific indices
cr query read-at respo.app.updater updater -p "2" -d 1   # Check 3rd element
cr query read-at respo.app.updater updater -p "2,1" -d 1 # Check 2nd child of 3rd element

# Step 4: Confirm target location before editing
cr query read-at respo.app.updater updater -p "2,1,0"    # Final confirmation

# Step 5: Use operate-at for surgical modifications
# Cirru via stdin (reliable)
echo '"new-value"' | cr edit operate-at respo.app.updater updater -p "2,1,0" -o replace -s -c
# Or JSON inline
cr edit operate-at respo.app.updater updater -p "2,1,0" -o replace -j '"new-value"'
```

### 3. Code Modification (updated `cr edit` inputs)

**Input modes:** `cr edit` accepts **Cirru by default**, but Cirru 正文通常通过 stdin 或文件传入；若用 JSON 内联最稳妥。

- Cirru via stdin: `echo '<cirru>' | cr edit ... -s -c`
- Cirru via file: `cr edit ... -f <cirru-file> -c`
- JSON inline: `-j '<json>'` (最简单的单行示例方式)
- JSON from file/stdin: 搭配 `-J/--json-input` 与 `-f/--file` 或 `-s/--stdin`

```bash
# Add or update a definition (Cirru via stdin)
echo 'defn new-fn () (println "|hello")' | cr edit upsert-def respo.app.core new-fn -s -c

# Add or update with JSON (inline)
cr edit upsert-def respo.app.core new-fn -j '["defn", "new-fn", [], ["println", "|hello"]]'

# Delete a definition
cr edit delete-def respo.app.core unused-fn

# Add a new namespace (Cirru default)
cr edit add-ns my.new.namespace

# Delete a namespace
cr edit delete-ns my.old.namespace

# Update namespace imports (JSON inline; use -J if from file/stdin)
cr edit update-imports respo.app.core -j '[["respo.core", ":refer", ["div", "render!"]], ["respo.app.schema", ":as", "schema"]]'

# Add/remove module dependencies
cr edit add-module "path/to/module"
cr edit delete-module "path/to/module"
```

### 4. Project Configuration

```bash
# Get project configuration (init-fn, reload-fn, version)
cr query configs

# Set project configuration
cr edit set-config version "0.16.22"
cr edit set-config init-fn "respo.main/main!"
cr edit set-config reload-fn "respo.main/reload!"
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
cr query read-ns respo.app.updater        # Understand state management
cr query find-symbol my-function-name     # Find where it's defined/used
cr query usages respo.core render!        # See how render! is used
```

### Step 2: Implement the Solution

Use the **precise editing pattern** for complex changes:

```bash
# 1. Read the whole definition
cr query read-def namespace function-name

# 2. Map out the structure with read-at
cr query read-at namespace function-name -p "" -d 1

# 3. Navigate to target position
cr query read-at namespace function-name -p "2,1" -d 1

# 4. Make the change (recommended: Cirru via stdin/file, or JSON inline)

# Cirru via stdin (reliable)
echo '["new" "code"]' | cr edit operate-at namespace function-name -p "2,1,0" -o replace -s -c

# JSON inline (quick one-liner)
cr edit operate-at namespace function-name -p "2,1,0" -o replace -j '["new", "code"]'

# 5. Verify
cr query read-at namespace function-name -p "2,1"
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
cr query find-symbol problem-symbol
cr query usages namespace definition

# Review the definition in detail
cr query read-def namespace definition
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
cr query find-symbol render-app!
cr query usages respo.main render-app!

# Verify store watcher is set up
cr query read-def respo.app.core dispatch!
cr query read-def respo.main main!
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
cr query read-def respo.app.updater updater

# Verify dispatch! is calling updater correctly
cr query read-def respo.app.core dispatch!

# Check the state path in component
cr query read-def respo.app.comp.container comp-container
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
cr query read-def respo.core defeffect  ; macro documentation

# Find effect in component
cr query find-symbol my-effect
cr query usages respo.app.comp.task my-effect
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
cr query read-def respo.main reload!

# Verify clear-cache! is called
cr query usages respo.core clear-cache!
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
   cr query read-ns namespace-name  # See imports and doc
   cr query peek-def namespace def-name  # See signature
   ```

2. **Map the exact location**

   ```bash
   cr query read-at namespace def-name -p "" -d 2  # Overview
   cr query read-at namespace def-name -p "2" -d 2  # Check section
   cr query read-at namespace def-name -p "2,1" -d 2  # Precise location
   ```

3. **Make surgical change**

```bash
# Cirru input (default)
echo '"new-value"' | cr edit operate-at namespace def-name -p "2,1,0" -o replace -s -c

# If you really need JSON, add -j (inline) or -J with file/stdin
cr edit operate-at namespace def-name -p "2,1,0" -o replace -j '"new-value"'
```

4. **Verify immediately**
   ```bash
   cr query read-at namespace def-name -p "2,1"  # Confirm change
   cr --check-only  # Verify syntax
   ```

### Common edit operations:

```bash
# Replace a value (Cirru input)
echo '"new-value"' | cr edit operate-at ns def -p "2,1,0" -o replace -s -c

# Insert before a position (Cirru list)
echo '["new" "element"]' | cr edit operate-at ns def -p "2,1" -o insert-before -s -c

# Insert after a position (JSON alternative)
cr edit operate-at ns def -p "2,1" -o insert-after -j '["new", "element"]'

# Delete a node
cr edit operate-at ns def -p "2,1,0" -o delete

# Insert as child (append)
echo '"child-value"' | cr edit operate-at ns def -p "2,1" -o insert-child -s -c
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
cr query ls-defs respo.test.main
cr query read-def respo.test.main test-fn

# Run tests
cr -1  ; (if init-fn runs tests)
```

### Error diagnosis

```bash
# View error file
cr query error
cat .calcit-error.cirru

# Search for the problematic definition
cr query find-symbol problem-name

# Check the full definition
cr query read-def namespace problem-name

# Validate dependencies
cr query read-ns namespace-name  ; Check imports
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
   cr query read-at namespace def -p "modified-path"  # Confirm change
   cr --check-only  # Check syntax
   cr -1  # Test run
   ```

5. **Use peek-def before read-def** to reduce token consumption
   ```bash
   cr query peek-def ns def  # Light summary
   cr query read-def ns def  # Full AST (use only if needed)
   ```

### 🎯 Optimization Tips for Token Usage

```bash
# Fast exploration with limited output
cr query peek-def respo.core defcomp          # 5-10 lines
cr query ls-defs respo.app.updater            # Quick list

# Slower but comprehensive
cr query read-def respo.app.updater updater   # Full JSON AST

# Use -d flag to limit JSON depth
cr query read-at ns def -p "2,1" -d 1         # Shallow
cr query read-at ns def -p "2,1" -d 3         # Medium
cr query read-at ns def -p "2,1"              # Full (default)

# Search before diving deep
cr query find-symbol my-function              # Find location first
cr query usages ns def                        # See usage patterns
```

### 📖 Documentation Strategy

When stuck, use these resources in order:

1. This file (Respo-Agent.md) - you are here
2. [README.md](../README.md) - Project overview and index
3. [Beginner Guide](./beginner-guide.md) - Conceptual introduction
4. [API Reference](./api.md) - Specific API documentation
5. [Guide docs](./guide/) - Detailed topics
6. `cr docs api <keyword>` - Language documentation
7. Project code itself: `cr query read-ns <namespace>`

---

## Quick Reference

### Most Used Commands

```bash
# Exploration (read-only, no changes)
cr query ls-ns                           # List namespaces
cr query read-ns respo.core              # Read namespace details
cr query ls-defs respo.app.core          # List definitions
cr query peek-def respo.core render!     # Quick peek
cr query read-def respo.core render!     # Full definition
cr query find-symbol render!             # Search globally
cr query usages respo.core render!       # Find usages

# Navigation (precise editing)
cr query read-at ns def -p "" -d 1       # View structure
cr query read-at ns def -p "2,1" -d 1    # Drill down
cr query read-at ns def -p "2,1,0"       # Confirm target

# Modification (careful!)
cr edit upsert-def ns def -c 'defn func () body'
cr edit operate-at ns def -p "2,1,0" -o replace -c '"value"'
cr edit delete-def ns def

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
