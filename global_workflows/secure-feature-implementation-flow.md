# Workflow: Secure Feature Implementation Flow

## Purpose
Coordinate design and implementation planning for a feature that touches UI, backend, data, auth, and review.

## Trigger
Use when a feature crosses trust boundaries or modifies protected data.

## Inputs
- feature requirements
- architecture context
- auth and data model context

## Steps
1. Plan the UX and frontend surface.
2. Design API, service, and data changes.
3. Review auth, access control, and trust boundaries.
4. Plan tests, observability, and error handling.
5. Produce an implementation order with hardening steps.

## Outputs
- secure feature plan
- dependency order
- review checklist

## Review checkpoints
- no privileged logic is left in untrusted clients
- inputs and mutations are validated
- failure and auditability concerns are covered
