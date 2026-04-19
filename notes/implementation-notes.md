# Implementation Notes

## What should be global
- Core operating rules that apply to every product-planning task.
- Reusable product, UX, architecture, monetization, and anti-pattern knowledge.
- Focused cross-project skills such as idea evaluation, MVP prioritization, UX flow design, and launch readiness review.
- Workflow definitions for the standard idea-to-launch progression.

## What should be workspace-specific
- The actual product idea, target users, market context, constraints, and business model choices.
- Stack choices, provider choices, regulatory constraints, and deployment environment details.
- Architecture decisions that are intentionally accepted for this product.
- Product-specific templates, examples, screenshots, wireframes, and API contracts.

## What should be static reference material
- Pricing research notes
- competitor matrices
- compliance notes
- brand language guidelines
- provider-specific architecture patterns

## What should become scripts
- schema validation or migration safety checks
- workflow document linting
- plan scaffolding from structured inputs
- launch checklist validation against known project files

## What should stay as pure prompt skills
- idea evaluation
- philosophy extraction
- scope prioritization
- flow design
- screen planning
- architecture reasoning

## Future expansion suggestions
- Add `references/` under selected skills for vertical-specific heuristics such as fintech, healthcare, or developer tools.
- Add deterministic scripts for scorecard generation and workflow/template scaffolding.
- Add workspace-local decision logs and product briefs that the workflows can consume directly.
- Add implementation skills for specific stacks only after the strategy layer is stable.
