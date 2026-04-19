# 00antigravity: Full Documentation Reference

This is the master combined document for the project and should be kept in sync whenever major documentation changes.

## 1. Project Overview

`00antigravity` is a disciplined Antigravity workspace that turns the project into a skill-driven developer/designer operating system. It centralizes rules in `GEMINI.md`, uses focused skills and reusable workflows from `.antigravity/`, and keeps project context in `docs/`.

## 2. Goals

- require structured skill use when relevant
- require workflow use when a task is procedural or multi-step
- keep the agent project-aware before selecting execution modules
- preserve secure defaults and explicit trust boundaries
- support frontend, backend, Python, TypeScript/JavaScript, databases, auth, automation, and multi-environment delivery

## 3. Stack Summary

### Workspace framework
- centralized rules: `GEMINI.md`
- skills: `.antigravity/skills/`
- workflows: `.antigravity/global_workflows/`
- workspace-local state: `.agent/` and `.project/`

### Preferred implementation defaults
- frontend: React, Tailwind CSS, shadcn/ui
- state: Zustand for client state, TanStack Query for server state
- backend: Supabase by default, but stack-aware and not locked to one runtime
- testing: Playwright and Vitest
- tooling: pnpm, TypeScript, ESLint, Prettier, Husky

## 4. Architecture Summary

The project is organized around:
- centralized rule enforcement in `GEMINI.md`
- focused skills chosen by task intent
- workflows for repeated, procedural execution
- living documentation in `docs/`
- workspace-local runtime artifacts under `.agent/` and `.project/`

See `docs/system-architecture.md` for the structured technical view.

## 5. Feature And Capability Summary

### Active rule categories
- project awareness and structured execution
- skill usage policy
- workflow usage policy
- security and trust-boundary enforcement
- workspace file locality
- documentation auto-update rules

### Active capability families
- architecture and environment planning
- backend, API, database, queue, and worker design
- auth, access control, and security review
- Python services, scripts, CLIs, and workers
- TypeScript and JavaScript backend design
- Supabase and Firebase specialization
- UX, design, frontend planning, and component generation
- tooling, config, deployment, testing, review, and observability

## 6. API Contracts Summary

The workspace uses `docs/api-contracts.md` as the API contract register.

Standard response shape:
```json
{
  "success": true,
  "data": {},
  "error": null
}
```

## 7. Workflow Logic Summary

The active workflow set is implementation-oriented:
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

## 8. Key Decisions

Important recorded decisions include:
- adopting a rules + skills + workflow workspace structure
- using stack-aware guidance rather than one-stack-only assumptions
- consolidating always-on rules into `GEMINI.md`
- using workspace-local memory and runtime artifact directories

See `docs/decisions.md` for the decision log.

## 9. Design And System Principles

- communication-first design
- strong spacing, alignment, and hierarchy
- clear frontend/backend/auth/data separation
- secure defaults and explicit environment assumptions
- documentation is part of implementation

## 10. Auth And Security Summary

- auth and authorization are distinct concerns
- privileged credentials must stay in trusted runtimes
- external inputs must be validated at the boundary
- Supabase and Firebase usage must respect their provider-specific trust models
- trust-boundary and access-control review are first-class tasks

## 11. Testing And Observability Summary

- significant changes should include relevant testing updates
- systems should expose enough logging, metrics, or tracing to operate safely
- review-and-hardening and deployment-readiness flows must check visibility and rollback concerns

## 12. Open Questions And Next Steps

- keep the docs synchronized with the active skill and workflow surface
- continue retiring outdated or duplicate legacy content from the repo root when safe
- validate that the active workflow set is used consistently on real tasks
