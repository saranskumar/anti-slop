---
name: responsive-design-planner
description: Use when a web product or component needs responsive layout planning across mobile, tablet, and desktop. Trigger on requests about breakpoints, layout adaptation, content priority, or mobile-first UI behavior.
---

# Goal
Plan intentional responsive behavior instead of relying on accidental CSS collapse.

# When to Use
- Screens must work across viewport sizes.
- A dashboard or form feels desktop-only.
- Mobile information hierarchy is unclear.

# Instructions
1. Define the primary tasks on mobile, tablet, and desktop.
2. Decide what content stays, collapses, stacks, or moves.
3. Define layout shifts at the relevant breakpoints.
4. Note touch targets, navigation changes, and scrolling risks.
5. Call out components that need alternate interaction patterns on smaller screens.

# Constraints
- Do not assume desktop layout can simply shrink.
- Preserve the primary user task on small screens.
- Keep responsive behavior understandable to implementers.

# Output Format
- Breakpoint strategy
- Content priority by viewport
- Layout rules
- Interaction adjustments
- Risks and test notes

# Examples
- "Plan responsive behavior for this analytics dashboard."
- "How should this editor work on mobile?"
