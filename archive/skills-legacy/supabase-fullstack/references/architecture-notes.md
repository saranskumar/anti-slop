# Supabase Architecture Notes

## Core Philosophy
1. **Secure by Default**: RLS should be enabled on all tables by default.
2. **Local First**: Use the Supabase CLI for development and migrations.
3. **Decoupled Logic**: Move domain logic to Edge Functions or DB functions.

## Layer Responsibility
- **Database**: Constraints, integrity, RLS, triggers.
- **Edge Functions**: Business logic, secrets, integrations.
- **Auth**: Identity, sign-in, session management.

## Security
- Never expose `service_role` key on the client.
- Always use `auth.uid()` in RLS policies.
- Sanitize all inputs at the Edge Function level.
