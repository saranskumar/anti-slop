---
name: ux-flow-designer
description: Design user journeys and task flows for a product concept or MVP. Use when the team needs primary flows, branch conditions, edge cases, onboarding paths, and end-to-end user movement before screen planning or UI implementation.
---

# Goal
Define how users move through the product to achieve outcomes with minimal friction.

# When to use
- MVP scope exists but the journey is still abstract.
- A feature crosses multiple screens, states, or roles.
- UX planning needs to expose dead ends, confusion points, or state transitions.

# Instructions
1. Start with the user's trigger, goal, and success condition.
2. Map the happy path first.
3. Add branch points for empty, loading, error, denial, retry, and abandonment states.
4. Identify any system actions that happen between user steps.
5. End with one primary flow summary and a list of risky moments.

# Constraints
- Flows are about user movement and decisions, not final visual design.
- Do not multiply flows when one primary flow with branches is enough.
- Keep actor changes explicit for admin, system, and end-user actions.

# Output format
- User and goal
- Flow steps
- Branch conditions
- Edge states
- Friction risks

# Examples
- "Map the user flow for onboarding and first report generation."
- "Design the flow for invite-based team setup."

# Output expectations
The flow should be detailed enough that screen planning becomes straightforward.
