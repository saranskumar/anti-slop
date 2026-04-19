---
name: automation-script-designer
description: Use this when designing scripts or small tools for automation, maintenance, CI tasks, file manipulation, config generation, or local workflow support across shell, Python, or mixed environments.
---

# Goal
Design automation scripts that are predictable, maintainable, and safe to run.

# When to Use
- A script automates repetitive developer or operator work.
- The task is environment-sensitive or configuration-heavy.
- The team needs a durable replacement for a copy-pasted shell sequence.

# Instructions
1. Define inputs, outputs, side effects, and runtime.
2. Choose the right language or scripting surface.
3. Add dry-run, logging, and safety behavior where relevant.
4. Clarify when the script should evolve into a package or CLI.

# Constraints
- Avoid machine-specific assumptions.
- Keep secrets out of scripts and logs.
- Make destructive behavior explicit.

# Output Format
- script design
- runtime and input/output notes
- safety features
- escalation path

# Examples
- "Design a script to rotate logs and archive artifacts."
- "Plan an automation script for developer environment setup."
