---
name: frontend-component-planner
description: Use this when the team needs a component breakdown for a screen or feature that may or may not be React-specific. Trigger on requests to plan component responsibilities, composition, states, and boundaries before implementation.
---

# Goal
Break a frontend surface into implementation-ready components with clear responsibilities.

# When to Use
- A screen exists but the component breakdown is unclear.
- The project may use React or another UI framework.
- A feature needs component-level planning before code generation.

# Instructions
1. Start from the screen job and user actions.
2. Split the surface into reusable and feature-specific components.
3. Define inputs, outputs, and UI states per component.
4. Note data dependencies and where fetching should not live.

# Constraints
- Do not assume React if the repo context does not justify it.
- Avoid over-abstraction for one-off UI.
- Keep component APIs narrow.

# Output Format
- component tree
- responsibilities
- state notes
- reuse guidance

# Examples
- "Plan the components for this settings page."
- "Break this dashboard into implementation pieces."
