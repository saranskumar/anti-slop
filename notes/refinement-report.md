# Existing Skills Refinement Report

## Assumption
The current root `skills/` directory is a legacy library. It contains a mix of useful specialized modules and broad persona-style skills. The new `.antigravity/skills/` pack is the recommended replacement set for idea-to-product system design.

## What was strong in the existing library
- `product` already emphasized user pain and scope discipline.
- `architecture` already pushed explicit tradeoffs and ADR thinking.
- `workflow-builder` had good state-machine instincts.
- `supabase-fullstack` was a solid stack-specific implementation skill.

## Common issues across the existing skills
- Several descriptions were too broad to route reliably.
- Multiple skills mixed philosophy, standards, and execution in one file.
- Some skills depended on specific stacks or tools without clear detection logic.
- A few skills were framed as expert personas rather than repeatable task modules.
- There was no dedicated idea-to-product progression across evaluation, MVP planning, UX, architecture, and launch.

## Recommended mapping from legacy skills to refined skills
- `product` -> `idea-evaluator`, `product-philosophy-extractor`, `mvp-feature-prioritizer`
- `uiux-designer` -> `ux-flow-designer`, `screen-planner`
- `architecture` -> `backend-architecture-planner`, `api-contract-designer`, `database-schema-designer`, `auth-strategy-designer`
- `workflow-builder` -> keep for automation/state-machine design; pair with workflow files in `.antigravity/workflows/`
- `frontend-expert` -> keep as implementation-facing; pair with `frontend-scaffold-planner`
- `auth` -> replace for planning with `auth-strategy-designer`; keep existing skill for implementation details
- `security`, `debugging`, `performance`, `refactor`, `sql-optimization`, `supabase-fullstack` -> keep as execution/review specialties, not strategy modules
- `thinking`, `gsd-execute`, `context-manager` -> keep as meta-execution utilities, not core product-system skills

## Legacy skill-by-skill notes

### architecture
- Strength: good tradeoff framing and ADR mindset.
- Gap: too broad for precise system-design routing across backend, API, data, and auth.
- Action: split responsibilities into backend, schema, auth, and API planning skills.

### auth
- Strength: concise and security-aware.
- Gap: too implementation-heavy and underspecified for tenant, invitation, and permission modeling.
- Action: use `auth-strategy-designer` for planning, reserve legacy `auth` for implementation tasks.

### context-manager
- Strength: useful meta-skill for long sessions.
- Gap: unrelated to idea-to-product planning responsibilities.
- Action: keep unchanged as an operational utility.

### debugging
- Strength: focused and operationally useful.
- Gap: none relevant to this pack.
- Action: keep unchanged.

### frontend-expert
- Strength: implementation-minded.
- Gap: overprescriptive to a specific React stack and not suitable for product planning.
- Action: keep for coding; pair with `frontend-scaffold-planner` for pre-code planning.

### gsd-execute
- Strength: execution rigor.
- Gap: too broad and process-heavy for routing against specific product-planning intents.
- Action: keep as an execution protocol, not a domain skill.

### performance
- Strength: clear trigger.
- Gap: none relevant here.
- Action: keep unchanged.

### product
- Strength: clear user-problem orientation.
- Gap: merges evaluation, philosophy, scope, and flow preparation into one broad skill.
- Action: replace with three narrower strategy skills.

### refactor
- Strength: focused.
- Gap: none relevant here.
- Action: keep unchanged.

### security
- Strength: important always-on mindset.
- Gap: truncated description and likely weak router trigger coverage.
- Action: improve description if editing legacy files later; keep as review skill.

### sql-optimization
- Strength: highly focused.
- Gap: not part of idea-to-product planning.
- Action: keep unchanged.

### supabase-fullstack
- Strength: robust implementation skill with references and examples.
- Gap: stack-specific and too implementation-oriented for high-level system generation.
- Action: keep as a downstream execution skill.

### thinking
- Strength: good for ambiguous tasks.
- Gap: too generic to replace concrete product-system skills.
- Action: keep as a meta-skill only.

### uiux-designer
- Strength: broad design coverage.
- Gap: overly encyclopedic and too visually oriented for early product planning.
- Action: replace planning responsibility with `ux-flow-designer` and `screen-planner`.

### workflow-builder
- Strength: useful for stateful business processes.
- Gap: not enough by itself to define the full idea-to-launch pipeline.
- Action: keep and anchor it with the new workflow files.

## Recommended next migration step
If you want, the next pass should directly rewrite selected legacy root skills in place to match the new split model while preserving any stack-specific execution knowledge worth keeping.
