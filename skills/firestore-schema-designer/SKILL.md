---
name: firestore-schema-designer
description: Use when a Firebase app needs Firestore collection design, document shape, subcollection strategy, security rule implications, or query-aware data modeling. Trigger on requests to design Firestore data structures before implementation.
---

# Goal
Design Firestore data models that match query patterns, permissions, and operational constraints.

# When to Use
- The app uses Firestore.
- Collections and document ownership need planning.
- Security rules and queries depend on document shape.

# Instructions
1. Start from access patterns, not relational habits.
2. Define top-level collections, document IDs, and any subcollections.
3. Plan denormalization where query needs justify it.
4. Call out rule-sensitive fields, counters, and aggregate patterns.
5. Consult `references/firestore-patterns.md` when query and rule tradeoffs matter.

# Constraints
- Do not mirror SQL table design mechanically.
- Avoid deep nesting unless access patterns truly require it.
- Keep rule checks cheap and document ownership obvious.

# Output Format
- Collection map
- Document sketches
- Query/rule implications
- Denormalization notes

# Examples
- "Design Firestore for a chat and notifications app."
- "How should we model team projects in Firestore?"
