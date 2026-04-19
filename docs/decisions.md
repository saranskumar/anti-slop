# Architecture Decisions

Use this file to record every significant technical decision.
This file MUST be updated whenever a new architecture, library, or pattern decision is made.

## Format
### [Date] — [Decision title]
- **Problem**: what we were solving
- **Options considered**: what we looked at
- **Decision**: what we chose
- **Reason**: why
- **Trade-offs**: what we accept by choosing this

---

### 2026-04-13 — AI Operating System structure
- **Problem**: Needed consistent, production-grade AI-assisted development
- **Options considered**: One-off prompts, custom GPT, rules-only approach
- **Decision**: Full rules + skills + context framework in `.antigravity/`
- **Reason**: Gives the agent persistent, structured knowledge that compounds
- **Trade-offs**: More files to maintain, but dramatically better output quality

### 2026-04-13 — State management split
- **Problem**: Avoiding tangled client/server state
- **Options considered**: Redux, Zustand-only, TanStack-only
- **Decision**: Zustand for client state + TanStack Query for server state
- **Reason**: Clean separation — Zustand for UI state, TanStack for data cache
- **Trade-offs**: Two libraries instead of one, but each does its job well

### 2026-04-13 — Component system
- **Problem**: Need consistent UI without rebuilding primitives
- **Options considered**: Material UI, Chakra, custom components, shadcn/ui
- **Decision**: shadcn/ui as primary component system
- **Reason**: Composable, themeable, owns the code, Tailwind-native
- **Trade-offs**: Manual setup per component, but full control

### 2026-04-13 — Validation approach
- **Problem**: Runtime type safety at data boundaries
- **Options considered**: Yup, io-ts, manual validation, Zod
- **Decision**: Zod for all schema validation, types inferred via z.infer<>
- **Reason**: TypeScript-first, composable, single source of truth for types
- **Trade-offs**: Additional parsing overhead, but catches bugs at runtime

### 2026-04-13 — Auth and security
- **Problem**: Need auth without rolling custom implementation
- **Options considered**: NextAuth, custom JWT, Firebase Auth, Supabase Auth
- **Decision**: Supabase Auth + Row Level Security (RLS)
- **Reason**: Integrated with database, RLS enforces security at data layer
- **Trade-offs**: Vendor lock-in to Supabase, but massive time savings

### 2026-04-13 — Dedicated security rule and skill
- **Problem**: Security was only referenced in the auth rule — not enforced on every feature
- **Options considered**: Add security items to existing rules, create a dedicated rule+skill, inline into each skill
- **Decision**: Dedicated `85-security.md` rule (OWASP Top 10 checklists) + `security` skill (6-step review process) + Security Mindset section in `00-global.md`
- **Reason**: Security needs to be impossible to miss, not buried in an auth-specific rule
- **Trade-offs**: More files, but security is now always-on and explicitly triggered on any data/API/auth task

### 2026-04-13 — Stack-agnostic skills and rules
- **Problem**: Skills and rules referenced specific libraries (Supabase, Zustand, Zod, shadcn) — unusable on projects with different stacks
- **Options considered**: Keep library-specific as opinionated defaults, make all generic, use "Identify First" pattern
- **Decision**: All skills use "Identify First" — agent reads the project's existing stack before applying patterns. Rules describe the principle, not the specific library
- **Reason**: The AI OS should work on React+Supabase, Python+Postgres, Vue+Firebase, or any other stack
- **Trade-offs**: Slightly less prescriptive, but dramatically more reusable across projects

### 2026-04-13 — Observability stack
- **Problem**: Need visibility into errors and user behavior
- **Options considered**: LogRocket, Datadog, custom logging
- **Decision**: Sentry for errors + PostHog for product analytics
- **Reason**: Industry standard, generous free tiers, good DX
- **Trade-offs**: Two services to manage, but each is best-in-class

---

### 2026-04-19 — Rule consolidation into GEMINI.md
- **Problem**: Spreading rules across multiple files in `.antigravity/rules/` made it harder to maintain a global context and ensured rules were always followed.
- **Options considered**: Keep separate files, move to a single rule file, inline into specific skills.
- **Decision**: Consolidated all 19 rules into `GEMINI.md` as global rules.
- **Reason**: Simplifies the context injection for the agent and ensures a unified source of truth for all "always-on" behavior.
- **Trade-offs**: `GEMINI.md` is larger, but easier to reference.

### 2026-04-19 — GSD Execution Methodology (Rule 97)
- **Problem**: Need for a deterministic, verified execution process to ensure production quality.
- **Options considered**: Ad-hoc execution, manual checking, SPEC→PLAN→EXECUTE→VERIFY→COMMIT (GSD).
- **Decision**: Implemented GSD methodology as Rule 97.
- **Reason**: Forces planning before coding and verification before committing, reducing churn and bugs.
- **Trade-offs**: Slightly slower start to tasks, but significantly higher success rate and reliability.

### 2026-04-19 — Workflow Memory system
- **Problem**: History and context are lost between sessions.
- **Options considered**: Rely on browser context, manual logging, `.project/conversations/` storage.
- **Decision**: Initialized Workflow Memory system under `.project/conversations/`.
- **Reason**: Persistent session logs allow the agent to "remember" past decisions and technical details across different conversations.
- **Trade-offs**: Requires disciplined logging, but vital for long-term project continuity.

### 2026-04-19 — Centralized project-aware skill and workflow policy
- **Problem**: The workspace had skills and workflows available, but there was no enforced rule that the agent must choose them using project context first.
- **Options considered**: Rely on informal conventions, keep rules spread across several files, centralize project-aware execution rules in `GEMINI.md`.
- **Decision**: Centralized execution rules in `GEMINI.md` requiring project-aware skill selection, workflow selection when appropriate, workspace-local runtime artifact storage, and expanded documentation auto-update targets.
- **Reason**: This makes the workspace behave like a disciplined developer/designer operating system instead of a generic assistant.
- **Trade-offs**: More explicit process overhead, but much better consistency and traceability.

### 2026-04-19 — Knowledge Update Policy (Rule 72)
- **Problem**: Need to distinguish between general heuristics and project-specific evolution to prevent knowledge pollution.
- **Options considered**: Auto-updating knowledge, manual-only updates, structured promotion via review workflows.
- **Decision**: Implemented Rule 72 (Knowledge Update Policy) with curated promotion via `/workflow-knowledge-review`.
- **Reason**: Knowledge should represent high-signal, reusable intelligence, while docs represent project state. Automatic updates to knowledge lead to low-signal "slop".
- **Trade-offs**: Requires intentional effort to promote patterns, but ensures the `knowledge/` library remains a premium asset.
