---
name: screen-planner
description: Plan screens, views, and page responsibilities for a product flow. Use when user journeys already exist and the team needs a screen inventory, screen purpose, key states, and component-level responsibilities without jumping into visual styling too early.
---

# Goal
Translate flows into a crisp screen architecture.

# When to use
- The team needs to know which screens actually exist.
- UX work is drifting into components before page responsibilities are clear.
- A feature spans dashboard, detail, create, and confirm surfaces.

# Instructions
1. Convert each major flow step into either a new screen, a state of an existing screen, or a modal/subflow.
2. Name each screen by user intent, not internal implementation.
3. For each screen, define its job, required data, primary action, and failure states.
4. Call out reusable patterns and shared surfaces.
5. Identify screens that should not exist because they add friction.

# Constraints
- Do not create dedicated screens when a state change or inline step is enough.
- Distinguish core user screens from admin or support surfaces.
- Avoid visual styling detail unless it affects structure.

# Output format
- Screen inventory
- Per-screen purpose
- Inputs and actions
- Required states
- Open UX questions

# Examples
- "Break this creator workflow into screens."
- "Plan the MVP screens for a B2B onboarding flow."

# Output expectations
The output should guide both designers and frontend planners without overcommitting visuals.
