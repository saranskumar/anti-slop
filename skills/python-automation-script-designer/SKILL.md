---
name: python-automation-script-designer
description: Use this when designing Python scripts for automation, batch processing, file operations, data transformation, or internal workflows that need deterministic structure and safe environment handling.
---

# Goal
Plan Python automation scripts that are reliable, readable, and safe to run repeatedly.

# When to Use
- A Python script automates repetitive work.
- The work is batch-oriented or file/config heavy.
- A script should be promoted from ad hoc to maintainable.

# Instructions
1. Define inputs, outputs, side effects, and runtime environment.
2. Separate IO handling, core logic, and config.
3. Plan dry-run, logging, and failure behavior where relevant.
4. Decide when the script should become a package or CLI instead.

# Constraints
- Do not hardcode secrets or machine-specific paths.
- Avoid silent mutation without logging or dry-run options for risky tasks.
- Keep scripts deterministic when possible.

# Output Format
- script purpose
- structure plan
- config and safety notes
- escalation path if it outgrows a script

# Examples
- "Design a Python automation script for report exports."
- "Turn this ad hoc script into a maintainable tool."
