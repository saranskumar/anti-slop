---
name: accessibility-reviewer
description: Use this when reviewing or designing UI for keyboard access, semantic structure, focus handling, labels, contrast, error communication, motion sensitivity, or screen-reader-friendly behavior.
---

# Goal
Make interfaces accessible enough to build and ship responsibly.

# When to Use
- A user-facing UI or component is being designed or reviewed.
- Forms, dialogs, tables, navigation, or async states need accessibility checks.
- Responsive and interaction decisions affect keyboard or assistive tech use.

# Instructions
1. Review semantics, labels, focus order, and state announcements.
2. Check keyboard interaction and visible focus behavior.
3. Review color, contrast, and non-color indicators.
4. Note accessibility-specific implementation requirements.

# Constraints
- Do not reduce accessibility to color contrast alone.
- Keep findings implementation-specific.
- Cover dynamic states, not just static markup.

# Output Format
- accessibility review
- findings
- required fixes
- optional improvements

# Examples
- "Review this modal flow for accessibility."
- "What accessibility requirements should this data table meet?"
