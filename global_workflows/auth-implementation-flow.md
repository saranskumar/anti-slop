# Workflow: Auth Implementation Flow

## Purpose
Coordinate identity, access control, backend enforcement, and UI implications for auth-heavy work.

## Trigger
Use when a feature or system involves sign-in, membership, roles, policies, or security rules.

## Inputs
- actor model
- runtime and provider choice
- protected resources

## Steps
1. Design auth strategy.
2. Design access control and trust boundaries.
3. Design provider-specific implementation details if using Supabase or Firebase.
4. Review secrets handling, tests, and privileged execution paths.

## Outputs
- auth plan
- access model
- implementation checkpoints

## Review checkpoints
- authentication and authorization are distinct
- server-side enforcement paths are explicit
- secrets never flow into untrusted contexts
