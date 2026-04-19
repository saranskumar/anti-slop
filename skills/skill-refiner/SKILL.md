---
name: skill-refiner
description: Use when an existing Antigravity skill has weak triggers, vague instructions, missing constraints, or poor structure and needs to be improved. Trigger on requests to rewrite, tighten, split, or review a skill for better routing and reuse.
---

# Goal
Improve existing skills so they are clearer, safer, and more composable.

# When to Use
- A skill is too broad or hard to trigger correctly.
- The current SKILL.md lacks structure or constraints.
- A library needs cleanup and normalization.

# Instructions
1. Inspect the current name, description, and instruction structure.
2. Identify trigger ambiguity, missing constraints, and overloaded responsibilities.
3. Rewrite the description for precise routing.
4. Tighten the instructions and output format.
5. Recommend splitting or adding support files when warranted.

# Constraints
- Preserve the underlying responsibility unless a split is clearly needed.
- Do not add filler sections.
- Keep refined skills compatible with adjacent skills.

# Output Format
- Problems found
- Improved skill design
- Revised SKILL.md
- Suggested supporting files

# Examples
- "Refine this bloated architecture skill."
- "Rewrite our old skill descriptions so routing works."
