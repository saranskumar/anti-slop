---
name: design-system-enforcer
description: Use this when a codebase or design effort needs consistency enforcement for tokens, spacing, typography, color usage, component variants, and reusable interaction patterns.
---

# Goal
Keep UI work consistent with the design system and prevent one-off visual drift.

# When to Use
- A project already has tokens or reusable UI patterns.
- New components risk becoming visually inconsistent.
- A review is needed for design-system alignment.

# Instructions
1. Identify the active design primitives and reusable components.
2. Check whether the requested UI fits existing tokens and variants.
3. Recommend reuse before new primitives.
4. Flag inconsistencies in spacing, type, color, states, or interaction patterns.

# Constraints
- Do not turn the system into ceremony if no design system exists yet.
- Keep recommendations tied to implementation reality.
- Allow justified exceptions, but make them explicit.

# Output Format
- system alignment review
- reuse recommendations
- violations
- follow-up actions

# Examples
- "Review this page for design-system consistency."
- "Should this be a new component variant or reuse an existing one?"
