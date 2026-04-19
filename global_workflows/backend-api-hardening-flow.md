# Workflow: Backend API Hardening Flow

## Purpose
Strengthen an API or backend service before release or exposure to more traffic.

## Trigger
Use when an API exists but needs security, reliability, and operations review.

## Inputs
- API/service design
- current auth and deployment context

## Steps
1. Review trust boundaries, auth, and access control.
2. Review validation, error handling, and retry behavior.
3. Review observability, performance, and migration safety.
4. Produce prioritized hardening actions.

## Outputs
- hardening report
- risk-ranked fixes
- release blockers

## Review checkpoints
- external inputs are validated
- privileged operations are protected
- operational visibility exists for failures
