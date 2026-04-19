# Cleanup Decisions

## Keep
- `system-architecture-designer`
- `frontend-architecture-planner`
- `backend-architecture-planner`
- `integration-planner`
- `data-flow-designer`
- `database-schema-designer`
- `api-designer`
- `auth-strategy-designer`
- `supabase-*` specialist skills except `supabase-fullstack`
- `firebase-*` specialist skills
- `ux-flow-designer`
- `screen-architect`
- `ui-component-designer`
- `responsive-design-planner`
- `react-component-generator`
- `state-management-designer`
- `testing-strategy-designer`
- `error-handling-designer`
- `skill-refiner`
- useful implementation skills such as `debugging`, `refactor`, and `sql-optimization`

## Refine
- `system-architecture-designer`, `frontend-architecture-planner`, `backend-architecture-planner`, and `api-designer` remain core but should be treated as developer-system skills, not product-ideation skills.
- `react-component-generator` should stay React-specific and should not pretend to be the universal frontend skill.
- `workflow-builder` stays, but only for developer/designer execution pipelines.

## Merge or replace conceptually
- `product` + `idea-evaluator` + `product-philosophy-*` + `mvp-feature-prioritizer` + `product-builder-orchestrator` -> replace operationally with `product-intake-processor`
- `api-contract-designer` -> subsumed by `api-designer`
- `screen-planner` -> subsumed by `screen-architect`
- `frontend-scaffold-planner` -> subsumed by `frontend-architecture-planner`
- `uiux-designer` -> split across `ux-flow-designer`, `interaction-designer`, `ui-component-designer`, `design-system-enforcer`, `responsive-design-planner`, and `accessibility-reviewer`
- `supabase-fullstack` -> split across focused Supabase skills

## Archived from active routing
- `product`
- `idea-evaluator`
- `product-philosophy-designer`
- `product-philosophy-extractor`
- `mvp-feature-prioritizer`
- `product-builder-orchestrator`
- `growth-loop-designer`
- `monetization-planner`
- `pricing-and-monetization-planner`
- `launch-readiness-reviewer`
- `implementation-plan-writer`
- `architecture`
- `auth`
- `uiux-designer`
- `frontend-expert`
- `frontend-scaffold-planner`
- `api-contract-designer`
- `screen-planner`
- `supabase-fullstack`
- `thinking`
- `context-manager`
- `gsd-execute`
- `skill-generator`

These assets were moved out of `skills/` or `rules/` into `.antigravity/archive/` so they do not compete with the active developer-first system.

## Workflow decisions
- Replace the old idea-to-launch workflow chain with developer execution flows.
- Remove placeholder workflow content and generic planning loops from the active set.
