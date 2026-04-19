# React Component Patterns

## Preferred structure
- Keep one component responsible for one visual or interaction job.
- Extract reusable primitives only after a pattern appears twice with similar semantics.
- Separate view wrappers, inputs, tables, and feedback components.

## Tailwind guidance
- Group layout, spacing, typography, color, and state classes intentionally.
- Prefer semantic wrappers and composition over class-heavy monoliths.

## Accessibility checklist
- Buttons and links must have visible labels.
- Inputs require labels, hints, and error text wiring.
- Dialogs require focus management and escape behavior.
