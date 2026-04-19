# State + Data Rule

This rule adapts to your project's stack. Prefer your project's established patterns.

---

## Core Principle

Separate client state (UI state) from server state (fetched data). Never mix them.

## Client-Side State

- Use the project's client state solution (e.g., Zustand, Redux, Pinia, Signals, Context)
- Keep stores small and domain-specific
- Store only UI state: selected items, modal open/closed, filters, draft inputs
- Never put server-fetched data into client state — it becomes a stale cache problem

## Server State / Data Fetching

- Use the project's data fetching solution (e.g., TanStack Query, SWR, RTK Query, Apollo, fetch + hooks)
- Always define: query key / cache key, stale time, and error handling
- Prefer cache invalidation over manual cache writes
- Handle loading, error, and empty states for every query

## Rule

If you find yourself storing fetched data in local/client state, stop.
Use a server-state solution instead — it handles caching, refetching, and staleness automatically.
