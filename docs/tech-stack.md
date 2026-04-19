# Tech Stack

This file MUST be updated whenever a new library or technology is added.

## AI Operating System Core
- **Framework**: .antigravity framework (Rules + Skills + Workflow Logic)
- **Language**: Markdown (structured documentation), JSON (schemas)
- **Execution**: Antigravity AI Agent with GSD Protocol (Rule 97)

## Application Stack (Preferred Defaults)

The following technologies are used for implementations and demonstrations within this project:

### Frontend
- React (component-driven architecture)
- Tailwind CSS (utility-first styling)
- shadcn/ui (primary component system)
- Zustand (client-side global state)
- TanStack Query (server state / data fetching)
- Zod (schema validation + TypeScript type inference)

### Backend
- Supabase (database + auth + storage + edge functions)
- Supabase Auth (authentication + role-based access)
- Supabase RLS (row-level security enforcement)
- Supabase Storage (file uploads)
- Supabase Queues / BullMQ (background jobs)

## Observability
- Sentry (runtime error tracking)
- PostHog (product analytics)

## Testing
- Playwright (E2E/integration tests)
- Vitest (unit tests)

## Developer Experience
- pnpm (package manager — ALWAYS)
- TypeScript (Strict Mode)
- ESLint + Prettier + Husky (GSD toolchain)

---

**Note**: While these are the preferred defaults, the system is designed to be **stack-agnostic** and can be adapted to any technology by modifying the relevant skill definitions.
