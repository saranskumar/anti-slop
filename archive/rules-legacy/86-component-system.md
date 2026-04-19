# Component System Rule

This rule is stack-agnostic. Apply it to whichever component system your project uses.

---

## Principle

Use one component system consistently. Don't mix systems or build parallel primitives.

## Approach (adapt to your stack)

- Identify your project's component library (shadcn/ui, Radix, MUI, Ant Design, Vuetify, etc.)
- Prefer existing components over building from scratch
- Extend and compose existing primitives when customization is needed — don't fight the system
- If no library is in use, establish one before building UI at scale

## Consistency Rules

- Reuse existing design tokens (colors, spacing, typography) — don't invent new ones ad hoc
- Keep component props consistent across the codebase
- Don't create parallel button, input, or card implementations — consolidate

## When building a new UI element

1. Check if your component library already has it
2. Check if a similar custom component already exists in the codebase
3. Only then build from scratch — and make it reusable

## Rule

Before writing a new UI component, prove it doesn't already exist.
One source of truth per UI primitive.
