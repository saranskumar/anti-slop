---
name: supabase-fullstack
description: Use this skill when the user is working with Supabase and needs help with Edge Functions, SQL schema or migrations, Auth, Row Level Security, database functions, local CLI workflows, or deployment. Use it for building features, reviewing Supabase code, creating migrations, writing policies, implementing auth-aware server logic, and debugging full Supabase app flows.
---

# Supabase Fullstack Skill

## Goal
Help the user build and maintain Supabase-backed applications safely and consistently across:
- Edge Functions
- SQL schema and migrations
- Auth
- Row Level Security (RLS)
- Database functions / triggers
- Local development and deployment

The output must be production-minded, secure by default, and aligned with Supabase workflows.

---

## When to Use
Use this skill when the task involves any of the following:
- Creating or editing a Supabase Edge Function
- Writing SQL migrations or schema updates
- Designing tables, indexes, constraints, or Postgres functions
- Setting up Supabase Auth flows
- Writing or reviewing RLS policies
- Connecting Edge Functions to Supabase
- Using the Supabase CLI for local development, testing, linking, pushing, or deployment
- Debugging auth, policy, migration, or Edge Function issues

---

## Core Philosophy
1. Prefer **secure by default** designs.
2. Prefer **migrations and versioned SQL** over ad-hoc dashboard-only changes.
3. Prefer **RLS + JWT-aware access control** over trusting the client.
4. Prefer **small focused Edge Functions** over large monolith handlers.
5. Prefer **least privilege**:
   - Use `anon` access only for client-safe flows.
   - Use `service_role` only in trusted server environments like Edge Functions when required.
6. Keep logic in the **right layer**:
   - SQL for constraints, data integrity, policies, and database-side logic
   - Edge Functions for orchestration, webhooks, secret use, and third-party integrations
   - Auth for identity and session handling
7. Always think about deployability, rollback, and maintainability.

---

## Required Working Style

### 1. First classify the task
Before writing code, decide whether the user’s request belongs mainly to:
- **Edge Function**
- **SQL / migration**
- **Auth**
- **RLS / policy**
- **Database function / trigger**
- **Full-stack Supabase flow**

If the request spans multiple areas, design the solution in layers.

### 2. Use the right implementation layer
- Put schema changes in SQL migration files.
- Put access control in RLS policies, not just frontend checks.
- Put third-party API calls and secret-bearing logic in Edge Functions.
- Put reusable DB-side logic in Postgres functions when appropriate.

### 3. Keep output structured
When responding, use this order unless the user asks otherwise:
1. What is being built
2. Recommended Supabase architecture
3. Files to create or edit
4. SQL / Edge Function / Auth code
5. Security notes
6. Local test steps
7. Deploy steps

---

## Edge Functions Rules
When working on Edge Functions:

1. Assume Supabase Edge Functions are the correct place for:
   - webhooks
   - server-side API integrations
   - secret usage
   - privileged server-side orchestration
   - scheduled or event-driven logic if applicable

2. Default to TypeScript unless the workspace clearly uses JavaScript.

3. Keep functions small and focused:
   - validate input
   - derive auth context
   - run the minimum DB operations needed
   - return explicit status codes and JSON

4. If a function needs Supabase access:
   - use environment-provided project values
   - be careful with `SUPABASE_SERVICE_ROLE_KEY`
   - never suggest exposing service role keys to the browser

5. If user auth is required:
   - extract and forward the bearer token where appropriate
   - distinguish between user-context operations and admin-context operations

6. Prefer deterministic error handling:
   - check request method
   - validate body/query params
   - return descriptive but safe errors

7. When secrets are needed:
   - use environment variables
   - never hardcode secrets in code samples

---

## SQL and Migration Rules
When writing SQL:

1. Prefer migration-ready SQL.
2. Use explicit table names, foreign keys, indexes, and constraints.
3. Use `snake_case` names for tables, columns, indexes, and functions.
4. Include `created_at` and `updated_at` where appropriate.
5. Use `gen_random_uuid()` or project-consistent IDs if suitable.
6. Add indexes for:
   - foreign keys
   - common filters
   - unique lookups
7. Avoid destructive statements unless explicitly requested.
8. If changing existing schema:
   - preserve backward compatibility where possible
   - note migration risks
   - mention data backfill requirements if relevant
9. When writing database functions:
   - define security context carefully
   - explain whether `security definer` is appropriate
   - avoid unsafe privilege escalation

---

## Auth Rules
When working with Supabase Auth:

1. Clarify which auth mode is being used if the request implies it:
   - email/password
   - magic link / OTP
   - OAuth
   - anonymous / guest
   - server-side session usage

2. Distinguish clearly between:
   - client auth flow
   - server auth verification
   - admin operations

3. If access depends on a signed-in user:
   - use JWT-aware logic
   - design tables and RLS around `auth.uid()`

4. Never recommend trusting user identity from raw client input.

5. For user profile patterns:
   - keep auth identity in Auth
   - keep app profile data in a separate table if needed
   - link profile rows to `auth.users` safely

---

## RLS and Policy Rules
When writing policies:

1. Default to **RLS enabled** for user-facing tables.
2. Use `auth.uid()`-based policies where user ownership is intended.
3. Separate policies by action:
   - select
   - insert
   - update
   - delete
4. Keep policies readable and explicit.
5. Explain whether the policy is:
   - owner-only
   - team-based
   - public read
   - admin-only
6. If using service role in Edge Functions, explain that it bypasses RLS and must be used carefully.
7. If the user asks for “public access,” still propose the narrowest safe version.

---

## Full Solution Pattern
For full-stack Supabase features, design using this template:

### A. Data model
- tables
- relationships
- constraints
- indexes

### B. Access model
- who can read
- who can insert
- who can update
- who can delete

### C. Auth model
- how the user signs in
- how identity is represented
- how auth maps to app data

### D. Backend orchestration
- whether an Edge Function is needed
- which secrets or external APIs are involved
- whether service role is needed

### E. Deployment/testing plan
- local development steps
- migration application
- function deployment
- post-deploy checks

---

## Debugging Procedure
When troubleshooting Supabase issues:

1. Identify the failure area:
   - SQL syntax / migration
   - policy denial
   - auth/session issue
   - function runtime issue
   - deployment/config issue

2. Check assumptions in this order:
   - schema exists
   - RLS state is correct
   - policy matches the action
   - auth token/session is present
   - environment variables are configured
   - function is deployed and invoked correctly

3. If the problem is permission-related:
   - inspect whether request is using anon, user JWT, or service role
   - inspect policy conditions
   - inspect ownership/team logic

4. If the problem is Edge Function-related:
   - inspect request shape
   - inspect secrets
   - inspect Supabase client initialization
   - inspect whether the function should run as user-context or admin-context

---

## Output Requirements
Whenever useful, provide:
- file paths
- migration filenames
- example SQL
- example TypeScript
- policy snippets
- local test commands
- deployment commands

If the task is broad, split into:
- MVP version
- production-hardening notes

---

## Constraints
- Never expose secrets in client-side code.
- Never place `service_role` keys in the browser.
- Do not disable RLS as a shortcut unless the user explicitly wants a temporary debugging step, and even then warn clearly.
- Do not use vague placeholders when a concrete implementation can be inferred.
- Do not push business authorization entirely into frontend code.
- Do not create oversized all-purpose Edge Functions when smaller functions are better.
- Do not recommend dashboard-only manual changes if the user is working in version-controlled code.

---

## Preferred Commands and Workflows
When the user needs operational steps, prefer version-controlled local workflows using the Supabase CLI:
- initialize local project
- start local stack
- create migrations
- serve/test functions locally
- link project
- push migrations
- deploy functions

---

## Examples

### Example 1
User: "Create a Supabase Edge Function that receives a Stripe webhook and writes to the database."

Expected approach:
- recommend Edge Function
- verify webhook signature using secret
- use trusted server-side Supabase client
- write minimal DB changes
- explain local env vars and deploy steps

### Example 2
User: "Make a tasks table where users can only manage their own tasks."

Expected approach:
- create migration SQL
- enable RLS
- create owner-based select/insert/update/delete policies using `auth.uid()`
- mention required auth assumptions

### Example 3
User: "Add admin-only access to approve user submissions."

Expected approach:
- define admin model clearly
- avoid trusting frontend role flags
- use SQL policy or Edge Function strategy depending on architecture
- explain tradeoffs

### Example 4
User: "Why does my insert work in an Edge Function but fail in the app?"

Expected approach:
- explain likely difference between service-role execution and user JWT/RLS
- compare the two access contexts
- inspect policy logic
