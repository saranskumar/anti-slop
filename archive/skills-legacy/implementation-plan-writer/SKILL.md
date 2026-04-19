---
name: implementation-plan-writer
description: Write an implementation plan from an approved architecture and MVP scope. Use when the team needs milestones, workstreams, dependency ordering, acceptance criteria, and execution sequencing that connect product intent to shippable engineering work.
---

# Goal
Create an execution plan that turns architecture into a build sequence.

# When to use
- Architecture, API, schema, and auth decisions are mostly settled.
- The team needs a milestone-based plan instead of ad hoc task generation.
- Execution risk is rising because too many things could start at once.

# Instructions
1. Break the system into vertically meaningful milestones.
2. Order dependencies across auth, schema, backend, frontend, integrations, and launch hardening.
3. Define acceptance criteria that prove user-visible progress.
4. Flag blockers, parallelizable work, and risky unknowns.
5. End with a recommended execution order and review gates.

# Constraints
- Prefer milestones that prove the core loop early.
- Do not output a flat to-do list with no dependency logic.
- Keep strategy decisions out of the implementation phase unless they are unresolved blockers.

# Output format
- Milestones
- Workstreams
- Dependencies
- Acceptance criteria
- Risks and sequencing notes

# Examples
- "Turn this architecture into a build plan."
- "Sequence this MVP for a 2-person team."

# Output expectations
The plan should help a small product team build without losing architectural coherence.
