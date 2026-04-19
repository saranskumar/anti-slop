# System Architecture

This file is the system-level technical view of the project and must be updated whenever the system structure changes.

## Project Overview

`00antigravity` is a project workspace configuration and execution system for disciplined AI-assisted software delivery. It combines centralized rules, structured docs, focused skills, and reusable workflows so the agent behaves like a developer/designer operating system instead of a generic assistant.

## Major System Modules

- `GEMINI.md`: centralized always-on project rules
- `.antigravity/skills/`: focused execution modules selected by task intent
- `.antigravity/global_workflows/`: orchestration flows for multi-step implementation work
- `docs/`: project context and continuously updated source-of-truth documentation
- `.agent/`: workspace-local conversations, generated artifacts, and state
- `.project/`: project decisions and task state

## Frontend/Backend Boundaries

- Frontend concerns: UI, UX, component structure, responsive behavior, client-side interaction state, and API consumption
- Backend concerns: APIs, services, workers, integrations, authorization enforcement, and trusted runtime logic
- Database concerns: schema ownership, access control, persistence, storage, migrations, and data lifecycle
- The agent must keep these concerns separate when designing or implementing changes

## Auth Flow

- Authentication identifies the actor
- Authorization determines what the actor may access or mutate
- Auth design must keep trusted and untrusted runtimes explicit
- Provider-specific implementations may use Supabase Auth, Firebase Auth, or other stack-appropriate auth systems, but server-side or policy-level enforcement remains required

## API Layer

- APIs should expose clear contracts and response shapes
- Validation should happen at the boundary before business logic executes
- API contracts must be documented in `docs/api-contracts.md`
- API planning is coordinated through the skill and workflow system, not ad hoc patterns

## Database And Storage Layer

- Schema and storage decisions should be version-controlled
- Database design must reflect ownership, access patterns, and runtime constraints
- Storage and file access must respect trust boundaries and provider-specific security models

## State Management

- Client-side UI state and server-fetched data should remain conceptually separate
- State strategy depends on the active project stack and should be chosen with project context in mind
- Do not assume a single frontend framework or state library across all work

## Background Jobs

- Background jobs, queues, workers, and scheduled tasks are first-class architectural concerns
- Long-running, retryable, or asynchronous work should not be hidden inside interactive request paths
- Job payloads, retries, failure visibility, and idempotency must be explicit

## Observability

- Significant systems should have logs, metrics, tracing, or equivalent runtime visibility
- Error handling and observability must support both developer debugging and production operations
- Documentation and review flows should keep observability aligned with the real system shape

## Deployment And Runtime Considerations

- The workspace must support multiple runtimes and environments, including local, CI, staging, production, cloud, and serverless contexts
- Environment assumptions, configuration boundaries, and secret locations must be explicit
- Workspace-generated conversations and runtime artifacts must remain inside the workspace under `.agent/` and `.project/`
