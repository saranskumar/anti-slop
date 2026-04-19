---
name: access-control-planner
description: Use this when the team needs to define permissions, roles, membership rules, resource ownership, or action-level authorization separate from authentication choice. Trigger on requests about access models, RBAC, ABAC, tenancy, or protected operations.
---

# Goal
Design authorization logic that matches real actors and actions.

# When to Use
- Identity exists but permission rules are still vague.
- A system has user, admin, member, owner, or tenant-specific actions.
- Protected resources or actions need modeling.

# Instructions
1. Identify actors, resources, and protected actions.
2. Map who can do what under which conditions.
3. Choose role, membership, policy, or ownership mechanisms that fit the system.
4. State which layer enforces each decision.

# Constraints
- Do not stop at role names.
- Do not rely on frontend-only enforcement.
- Avoid overcomplicated policy models for small systems.

# Output Format
- actor and resource model
- action matrix
- enforcement layers
- risks and edge cases

# Examples
- "Plan access control for a multi-tenant admin app."
- "Who should be allowed to manage billing versus content?"
