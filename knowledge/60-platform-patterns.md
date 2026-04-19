# Platform Patterns

## Supabase
- Distinguish anon, authenticated, and service-role contexts clearly.
- Use RLS intentionally, and design schema with policy evaluation in mind.
- Prefer Edge Functions for privileged operations and integration logic that should not run in the client.

## Firebase
- Keep Firebase Auth, Firestore rules, and server-side admin code responsibilities distinct.
- Model Firestore around queries and security rules, not around SQL habits.
- Use Cloud Functions for privileged writes, webhooks, and background work.
