---
name: supabase-rls-policy-designer
description: Use when a Supabase app needs Row Level Security policies for multi-tenant access, ownership checks, roles, service paths, or safe data exposure. Trigger on requests to design or review Supabase RLS and SQL authorization logic.
---

# Goal
Design RLS policies that make data access safe, explainable, and testable.

# When to Use
- Tables are known and access rules must be enforced.
- A Supabase feature involves user-owned or workspace-owned data.
- Existing policies are confusing or unsafe.

# Instructions
1. Identify the actor, table, action, and ownership rule.
2. Map policies for `select`, `insert`, `update`, and `delete` separately.
3. Prefer membership and ownership checks over ad hoc role strings.
4. Call out service-role-only paths and backend bypass rules.
5. Use `references/rls-patterns.md` for common patterns and `examples/` for shape.

# Constraints
- Never rely on the frontend as the only access control layer.
- Do not write one giant permissive policy for all cases.
- Keep policy assumptions explicit and tied to schema.

# Output Format
- Access model summary
- Policy matrix
- SQL policy drafts
- Edge cases and tests

# Examples
- "Design RLS for workspace members and admins."
- "Review these Supabase policies for unsafe access."
