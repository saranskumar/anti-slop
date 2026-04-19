---
name: firebase-auth-designer
description: Use when the team needs authentication, identity providers, custom claims, session strategy, or permission design for a Firebase-backed app. Trigger on requests to design or review Firebase Auth architecture.
---

# Goal
Plan Firebase Auth so identity, claims, and app access rules stay coherent.

# When to Use
- The stack uses Firebase Auth.
- Claims, roles, or sign-in methods must be chosen.
- Firestore or Functions permissions depend on identity design.

# Instructions
1. Define user types, sign-in providers, and session expectations.
2. Decide when custom claims are needed and how they are assigned.
3. Map auth flows to Firestore access and Cloud Functions behavior.
4. Plan invite, onboarding, and account recovery paths.
5. Note admin-only operations and how they are protected.

# Constraints
- Keep privileged claim assignment server-side.
- Do not overload claims with high-cardinality or fast-changing data.
- Distinguish auth provider identity from app-level membership.

# Output Format
- Identity model
- Provider/session plan
- Claims strategy
- Access control notes

# Examples
- "Design Firebase Auth for a consumer app with Google sign-in."
- "Should we use custom claims for admin access?"
