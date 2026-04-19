---
name: supabase-auth-designer
description: Use when the team needs sign-in methods, profiles, sessions, invitations, memberships, or auth-related architecture for a Supabase app. Trigger on requests to design authentication and authorization using Supabase Auth.
---

# Goal
Design a Supabase auth model that fits the product, tenant structure, and permission rules.

# When to Use
- The app uses Supabase Auth.
- Workspace membership, invite flows, or profiles need planning.
- Auth and RLS must align.

# Instructions
1. Define actors, user record strategy, and profile ownership.
2. Pick sign-in methods and invitation model.
3. Decide how users join teams or workspaces.
4. Map auth events to schema and policy implications.
5. Identify which authorization checks live in RLS and which need backend logic.

# Constraints
- Do not confuse authentication with authorization.
- Avoid custom auth unless Supabase Auth clearly cannot meet the need.
- Keep role design tied to actual actions.

# Output Format
- Identity model
- Session/invite design
- Membership model
- RLS/backend enforcement notes

# Examples
- "Design Supabase auth for a B2B SaaS."
- "How should invite-only workspace access work with Supabase?"
