# Supabase RLS Patterns

## Ownership pattern
- Use `auth.uid() = owner_id` when rows are strictly user-owned.

## Membership pattern
- Prefer membership join tables for workspace access.
- Check membership existence in policies instead of trusting a role field on the row being protected.

## Admin override pattern
- Keep admin override explicit and narrow.
- Prefer backend/service-role paths for exceptional elevated actions.
