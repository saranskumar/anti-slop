---
name: cli-tool-designer
description: Use this when the deliverable is a CLI tool, command suite, operator utility, or local developer tool and the team needs command structure, UX, config, packaging, and safety planning across languages.
---

# Goal
Design CLIs that are understandable, scriptable, and safe in real operator workflows.

# When to Use
- The primary interface is a command line.
- A local dev tool or admin utility needs structure.
- Commands, flags, and output behavior are unclear.

# Instructions
1. Define users, command groups, and automation use cases.
2. Plan arguments, config, environment, and credential handling.
3. Define output modes, errors, and exit codes.
4. Recommend packaging and distribution approach.

# Constraints
- Keep destructive operations explicit.
- Do not mix interactive and automation modes carelessly.
- Keep commands composable.

# Output Format
- command surface
- structure plan
- config and safety notes
- distribution notes

# Examples
- "Design a local CLI for service setup."
- "Plan the command structure for this ops tool."
