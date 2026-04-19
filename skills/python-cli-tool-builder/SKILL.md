---
name: python-cli-tool-builder
description: Use this when building or planning a Python command-line tool, command surface, argument model, package entrypoint, or automation-oriented CLI workflow.
---

# Goal
Design Python CLIs that are scriptable, safe, and maintainable.

# When to Use
- The deliverable is a Python CLI.
- Command structure and packaging are needed.
- The tool will be used locally, in CI, or by operators.

# Instructions
1. Define command groups, arguments, and output modes.
2. Separate CLI parsing from domain logic.
3. Plan config, environment, and credential handling.
4. Define error messages, exit codes, and test strategy.

# Constraints
- Do not hide business logic inside argument-parsing code.
- Keep automation use cases script-friendly.
- Make destructive operations explicit.

# Output Format
- command map
- structure plan
- config and safety notes
- packaging guidance

# Examples
- "Design a Python CLI for deployment helpers."
- "How should this admin CLI be structured?"
