---
name: react-component-generator
description: Use when Codex needs to generate or scaffold a React or Next.js component with clear props, state handling, Tailwind styling direction, accessibility, and file structure. Trigger on requests to create a component, page section, dashboard widget, form, modal, or reusable UI block.
---

# Goal
Generate React components that are production-minded, composable, and aligned with the planned UI system.

# When to Use
- The component contract is known and code generation is appropriate.
- The team wants a scaffold or first implementation for React/Next.js/Tailwind.
- A component needs a repeatable structure quickly.

# Instructions
1. Confirm the component purpose, data inputs, outputs, and states.
2. Use the screen/component plan if it already exists.
3. Generate the smallest complete component that handles the required states.
4. Keep markup readable, Tailwind classes organized, and props explicit.
5. Include accessibility hooks, keyboard behavior, and empty/error states where relevant.
6. If patterns are repeated, consult `references/component-patterns.md`.

# Constraints
- Do not bury fetching or business rules inside purely presentational components unless requested.
- Do not generate giant multi-purpose components.
- Prefer composition over prop explosion.

# Output Format
- Component summary
- File outline
- Component code
- Notes on states and accessibility

# Examples
- "Generate a React billing summary card."
- "Create a Next.js Tailwind sign-in form component."
