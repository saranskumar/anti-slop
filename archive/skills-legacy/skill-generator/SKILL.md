---
name: skill-generator
description: Use when the user wants to create a new Antigravity skill pack or add a focused skill folder with SKILL.md, references, examples, or scripts. Trigger on requests to generate a skill, scaffold a skill, or expand the local skill library.
---

# Goal
Generate focused, router-friendly Antigravity skills that are reusable in a real workspace.

# When to Use
- A new capability should become a reusable skill.
- The current skill library has a gap.
- The user wants a skill scaffold or complete skill package.

# Instructions
1. Identify the single responsibility the skill should own.
2. Write a precise trigger description that makes routing obvious.
3. Draft the SKILL.md with goal, usage, instructions, constraints, output, and examples.
4. Decide whether deterministic scripts, references, or examples are justified.
5. Use `references/skill-checklist.md` and the scaffold script when it helps.

# Constraints
- Do not create vague do-everything skills.
- Keep the description semantically precise.
- Split skills when responsibilities are meaningfully different.

# Output Format
- Skill purpose
- Trigger description
- Full SKILL.md
- Suggested supporting files

# Examples
- "Generate a new skill for audit-log design."
- "Create an Antigravity skill for billing webhooks."
