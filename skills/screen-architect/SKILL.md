---
name: screen-architect
description: Use when user flows already exist and the team needs a screen inventory, screen responsibilities, key states, and view hierarchy for a product or feature. Trigger on requests to break a flow into pages, views, or screen-level structure.
---

# Goal
Turn user journeys into a clear set of screens and view responsibilities.

# When to Use
- After UX flows are mapped.
- Before frontend architecture or UI implementation.
- When screen count, page purpose, or view hierarchy is unclear.

# Instructions
1. Convert flow steps into screens, subviews, or modal states.
2. Name each screen by user intent.
3. Define the job, primary action, required data, and edge states for each screen.
4. Call out shared shells, dashboards, detail views, and creation flows.
5. Remove any screen that exists only because of implementation convenience.

# Constraints
- Do not over-specify visuals.
- Do not create a screen when a state on an existing screen is enough.
- Keep admin surfaces distinct from user-facing flows.

# Output Format
- Screen inventory
- Per-screen purpose
- Data/actions/states
- Shared layout notes
- Open questions

# Examples
- "Break this onboarding flow into screens."
- "Architect the screens for a multi-step report builder."
