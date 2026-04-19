---
name: ui-component-designer
description: Use when the team needs reusable UI component patterns, component responsibilities, states, props, and interaction behavior for React, Next.js, or Tailwind-based interfaces. Trigger on requests to design a component system or define a component before coding it.
---

# Goal
Design reusable components that fit the screen architecture and design system.

# When to Use
- A screen has been planned and now needs component structure.
- The team is defining a design system or feature-specific component set.
- A component needs state and interaction design before implementation.

# Instructions
1. Start from the screen job and user action.
2. Define component purpose, inputs, outputs, and state variants.
3. Specify loading, empty, error, disabled, and success states.
4. Separate shared primitives from feature-specific components.
5. Note accessibility expectations and responsive behavior.

# Constraints
- Do not collapse business logic into presentational components.
- Avoid creating reusable components too early if the pattern is not proven.
- Keep component APIs narrow.

# Output Format
- Component name and purpose
- Props/data/events
- States
- Accessibility notes
- Reuse guidance

# Examples
- "Design the component structure for a billing table."
- "Define a reusable AI result card component."
