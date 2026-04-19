# Feature Map

This file must be updated whenever a new capability is added or the active workspace behavior changes.

## Core Workspace Capabilities

### Centralized Rule System
- all always-on rules live in `GEMINI.md`
- rules enforce project awareness before execution
- rules enforce skill-first and workflow-aware behavior
- rules enforce documentation updates and workspace-local artifact storage

### Active Skill System

The active skill library is organized into these families:
- intake
- architecture
- backend, API, database, queue, and worker design
- auth and security
- Python backend, CLI, automation, package, and worker design
- TypeScript and JavaScript backend design
- Supabase specialization
- Firebase specialization
- design, UX, and frontend implementation planning
- tooling, environment, deployment, review, and observability

### Active Workflow System

The active workflow library includes:
- request-to-build-plan
- secure-feature-implementation-flow
- database-design-to-api-flow
- ui-flow-to-component-plan
- auth-implementation-flow
- supabase-feature-build-flow
- firebase-feature-build-flow
- python-service-build-flow
- cli-tool-build-flow
- backend-api-hardening-flow
- review-and-hardening-flow
- deployment-readiness-flow

### Documentation System

Core docs now include:
- `docs/product-context.md`
- `docs/tech-stack.md`
- `docs/design-principles.md`
- `docs/architecture.md`
- `docs/system-architecture.md`
- `docs/feature-map.md`
- `docs/decisions.md`
- `docs/api-contracts.md`
- `docs/workflow-logic.md`
- `docs/full.md`

### Workspace Memory And Runtime Locality

Workspace-generated data should stay under:
- `.agent/conversations/`
- `.agent/generated/`
- `.agent/state/`
- `.project/decisions/`
- `.project/tasks/`
