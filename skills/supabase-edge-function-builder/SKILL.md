---
name: supabase-edge-function-builder
description: Use when building or planning a Supabase Edge Function for authenticated server logic, webhooks, background triggers, third-party integrations, or privileged operations. Trigger on requests to create or review edge functions in a Supabase system.
---

# Goal
Create Edge Functions that handle trusted backend work safely and cleanly.

# When to Use
- The logic should not run in the client.
- A webhook, privileged API call, or server-side integration is needed.
- Supabase Edge Functions are the chosen execution layer.

# Instructions
1. Define the function trigger, caller, auth expectations, and side effects.
2. Separate request validation, auth checks, business logic, and response shape.
3. Handle secrets only in server-side environment configuration.
4. Design retry, idempotency, and logging strategy for external calls.
5. Consult `references/edge-function-checklist.md` when integration risk is non-trivial.

# Constraints
- Never expose service-role credentials to the client.
- Do not put RLS-sensitive writes in the client if privileged logic is required.
- Keep each function focused on one job.

# Output Format
- Function purpose
- Input/output contract
- Security notes
- Execution flow
- Implementation scaffold

# Examples
- "Build a Supabase Edge Function for Stripe webhook handling."
- "Plan an edge function to generate AI reports."
