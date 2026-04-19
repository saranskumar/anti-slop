---
name: data-flow-designer
description: Use when the team needs to understand how data moves through frontend, backend, database, jobs, auth, and external integrations. Trigger on requests to map data flow, event flow, or state transitions across the system.
---

# Goal
Make data movement and ownership explicit so architecture and debugging stay tractable.

# When to Use
- A feature spans multiple layers.
- Async jobs, webhooks, or AI processing complicate the path.
- Teams need clarity on where data is created, transformed, or persisted.

# Instructions
1. Identify source systems, transformations, and sinks.
2. Trace the happy path first, then failure and retry paths.
3. Mark trust boundaries, validation points, and persistence events.
4. Distinguish synchronous user-facing flow from asynchronous background flow.
5. Highlight points where duplication, staleness, or race conditions can occur.

# Constraints
- Do not confuse control flow with data flow.
- Keep ownership explicit at each hop.
- Include error and retry behavior when async work exists.

# Output Format
- Flow summary
- Step-by-step data path
- Validation/trust points
- Async and failure notes

# Examples
- "Map the data flow for report generation and email delivery."
- "How does data move through this Next.js plus Supabase stack?"
