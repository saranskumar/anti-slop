---
name: firebase-security-rules-reviewer
description: Use this when reviewing or designing Firebase security rules for Firestore or related client-accessed Firebase data. Trigger on requests about Firebase rules safety, access constraints, auth-claim checks, or client data exposure.
---

# Goal
Review Firebase security rules for clarity, least privilege, and fit with document structure.

# When to Use
- Firestore or Firebase client access is protected by rules.
- A Firebase feature handles user-owned or role-sensitive data.
- Existing rules are broad, confusing, or under-tested.

# Instructions
1. Identify collections, actors, and intended actions.
2. Map rules to actual document ownership and auth claims.
3. Check for broad read/write exposure and expensive rule assumptions.
4. Recommend safer or clearer rule structure.

# Constraints
- Do not assume client code is trusted.
- Keep rules aligned with actual document structure.
- Avoid rules that depend on data the client can fake.

# Output Format
- rule review summary
- findings
- improved rule strategy
- edge cases to test

# Examples
- "Review these Firestore rules for tenant isolation."
- "How should Firebase rules protect admin-only writes?"
