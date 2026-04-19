# Audit Summary

## What exists
- A mixed `.antigravity/` pack with useful developer skills, but also legacy ideation/product-planning skills and broad persona-style skills.
- A `global_workflows/` folder that still reflects an idea-to-launch planning chain rather than developer execution workflows.
- Duplicated and overlapping rules copied from an earlier workspace-oriented operating model.

## Weak points
- Multiple skills overlap on architecture, product planning, and UI design without clear routing boundaries.
- Several skills are too vague, too broad, or too tied to startup ideation for a developer operating system.
- The current pack leans web/full-stack and does not yet cover Python services, CLIs, automation, environment planning, queue/worker design, or deployment readiness deeply enough.

## Duplicates and overlaps
- `product`, `idea-evaluator`, `product-philosophy-*`, `mvp-feature-prioritizer`, and `product-builder-orchestrator` overlap around ideation and product shaping.
- `architecture`, `system-architecture-designer`, `backend-architecture-planner`, and `api-contract-designer` overlap around system planning.
- `uiux-designer`, `screen-planner`, and `screen-architect` overlap on design structure.
- `frontend-expert`, `frontend-scaffold-planner`, and `frontend-architecture-planner` overlap on frontend planning.
- `supabase-fullstack` overlaps several narrower Supabase skills.

## Missing capabilities
- Python-specific architecture, package, API, worker, CLI, and automation design
- queue and background job planning
- environment and deployment strategy
- secrets and trust-boundary review
- access-control design separate from auth choice
- frontend API integration and data-fetch planning
- Firebase security rules review
- code review, system review, migration safety, and observability planning

## Cleanup direction
- Keep one intake skill only: `product-intake-processor`
- Keep or refine focused developer/designer skills
- Deprecate ideation-heavy and broad persona skills
- Replace low-signal workflows with developer execution workflows
