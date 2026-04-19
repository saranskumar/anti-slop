---
name: user-journey-mapper
description: Use this when a feature or product needs a clear end-to-end user journey across entry, action, system response, and outcome. Trigger on requests to map the full experience before screens or components are finalized.
---

# Goal
Map the user journey in a way that directly informs implementation and UX structure.

# When to Use
- The journey spans several states or surfaces.
- The team needs to understand user movement before screen design.
- UX work needs clearer context around goals and friction points.

# Instructions
1. Define the user, trigger, goal, and desired outcome.
2. Map the happy path first.
3. Add branch points for failure, waiting, permissions, and return paths.
4. Note where backend or async events change the experience.

# Constraints
- Keep the map tied to a real task.
- Do not turn the journey into generic product theory.
- Make implementation-relevant states explicit.

# Output Format
- user and goal
- journey steps
- branch and failure points
- implementation notes

# Examples
- "Map the journey for inviting a teammate and getting first value."
- "Show the user path through this report workflow."
