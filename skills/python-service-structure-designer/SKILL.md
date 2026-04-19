---
name: python-service-structure-designer
description: Use this when a Python service, package, or repository needs a maintainable internal structure for modules, domain logic, adapters, config, entrypoints, and tests. Trigger on requests about project layout and internal organization for Python systems.
---

# Goal
Create a Python project structure that supports growth without framework sprawl.

# When to Use
- A Python repo is becoming messy.
- The team needs a clean layout before implementation.
- Multiple entrypoints share domain logic.

# Instructions
1. Identify the project's entrypoints and shared domain logic.
2. Separate package code, scripts, tests, config, and runtime adapters.
3. Define naming and layering conventions.
4. Recommend structure for future growth and packaging.

# Constraints
- Keep one responsibility per module or package.
- Do not mix throwaway scripts with reusable domain code.
- Avoid structure that only mirrors framework folders.

# Output Format
- project layout
- package boundaries
- naming guidance
- growth notes

# Examples
- "How should this Python service repo be organized?"
- "Split this messy Python project into clean packages."
