---
name: supabase-schema-designer
description: Use when designing PostgreSQL tables, enums, relationships, migrations, storage metadata, or tenant-aware schema structures for a Supabase-backed app. Trigger on requests about Supabase schema planning or SQL-first data design.
---

# Goal
Design a Supabase-friendly schema that works with auth, RLS, and migration-based development.

# When to Use
- The app will use Supabase Postgres.
- Core entities and permissions are known enough to model.
- The team wants schema guidance before migrations are written.

# Instructions
1. Define entities, tenant boundaries, and user ownership rules.
2. Design tables, enums, relationships, and lifecycle fields.
3. Note where `auth.users` joins, profile tables, and membership tables are needed.
4. Plan migration order and indexes.
5. Flag RLS-sensitive tables for follow-up policy design.

# Constraints
- Prefer explicit join tables and memberships over magic JSON blobs.
- Do not rely on dashboard-only manual schema edits.
- Keep auth and app data linked deliberately.

# Output Format
- Schema overview
- Table sketches
- Relationship notes
- Migration notes
- RLS follow-ups

# Examples
- "Design a Supabase schema for a team-based analytics app."
- "What tables do we need for subscriptions and AI usage history?"
