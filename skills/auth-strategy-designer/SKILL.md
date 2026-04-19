---
name: auth-strategy-designer
description: Design authentication and authorization strategy for a product or MVP. Use when the team needs sign-in methods, session model, user/workspace membership, roles, tenant boundaries, invitation flows, or permission enforcement plans.
---

# Goal
Choose a secure and realistic auth model that fits the product and business model.

# When to use
- The product is moving from concept to architecture.
- Team, org, or workspace concepts affect permissions.
- There is uncertainty around managed auth vs custom auth, or around RBAC design.

# Instructions
1. Identify actors, identity types, and tenant structure.
2. Choose sign-in methods and session expectations.
3. Define how users join a workspace, team, or account.
4. Define authorization at the action level, not just role labels.
5. Specify which layer enforces each permission.

# Constraints
- Prefer managed auth over custom auth unless a hard requirement blocks it.
- Do not design broad roles without mapping real actions.
- Keep billing authority and workspace admin authority distinct when relevant.

# Output format
- Identity model
- Sign-in and invitation model
- Roles and permissions
- Enforcement layers
- Security risks and recommendations

# Examples
- "Design auth for a multi-tenant SaaS with client and admin users."
- "How should invite-only workspace access work for this product?"

# Output expectations
The auth plan should be specific enough to guide implementation and security review.
