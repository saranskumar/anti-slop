---
name: database-schema-designer
description: Design an application database schema from product flows and backend responsibilities. Use when the team needs core entities, relationships, lifecycle fields, indexes, audit needs, tenancy boundaries, and migration-minded schema planning for an MVP or production system.
---

# Goal
Produce a schema outline that serves the product, not just the ORM.

# When to use
- Core entities and product behavior are known.
- The team needs table design before implementation.
- Data ownership, reporting needs, or tenant boundaries are still fuzzy.

# Instructions
1. List the core entities, ownership model, and lifecycle transitions.
2. Define relationships and key constraints.
3. Include status fields, timestamps, audit fields, and soft-delete or retention expectations where needed.
4. Call out indexes, uniqueness rules, and denormalization candidates.
5. Note migrations or data backfills likely to be needed as the system evolves.

# Constraints
- Do not mirror UI structure directly into schema design.
- Avoid generalized entity systems in v1 unless there is a proven need.
- Keep analytics/event data separate from operational data when useful.

# Output format
- Entity list
- Relationship notes
- Table sketch
- Constraint and index notes
- Risks and migration notes

# Examples
- "Design the schema for a B2B workspace app with reports and approvals."
- "What tables do we need for this AI generation history and billing flow?"

# Output expectations
The result should be immediately useful for migration planning and API design.
