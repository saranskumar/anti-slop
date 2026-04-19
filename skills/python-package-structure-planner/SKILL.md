---
name: python-package-structure-planner
description: Use this when a Python repository needs package-level planning, import boundaries, module naming, reusable library extraction, or distribution-friendly structure.
---

# Goal
Plan Python package structure so code stays reusable and imports stay clean.

# When to Use
- A Python codebase is growing into packages.
- Reusable modules need extraction from scripts or apps.
- The repo may be published or reused across entrypoints.

# Instructions
1. Identify the reusable library surface versus app-specific code.
2. Define package names, module boundaries, and public interfaces.
3. Plan tests, versioning, and entrypoints around the package shape.
4. Clarify import rules and shared utility placement.

# Constraints
- Avoid dumping unrelated helpers into one utils module.
- Keep public package surfaces deliberate.
- Do not overpackage throwaway code.

# Output Format
- package map
- public versus internal modules
- import and naming notes
- packaging guidance

# Examples
- "Plan the package structure for this Python repo."
- "How should we extract a reusable Python library from this service?"
