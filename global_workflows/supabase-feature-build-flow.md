# Workflow: Supabase Feature Build Flow

## Purpose
Coordinate Supabase schema, auth, storage, RLS, and Edge Function work for one feature.

## Trigger
Use when the active feature depends materially on Supabase.

## Inputs
- feature requirements
- current schema and auth model

## Steps
1. Design schema and storage shape.
2. Design auth and RLS policies.
3. Add Edge Functions for privileged or integration logic if needed.
4. Review migration safety, tests, and secrets handling.

## Outputs
- Supabase feature design
- policy plan
- hardening checklist

## Review checkpoints
- service-role usage stays server-side
- RLS reflects actual ownership and membership rules
- migrations and rollbacks are considered
