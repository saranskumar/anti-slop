# Workflow: Review And Hardening Flow

## Purpose
Coordinate code review, system review, migration safety, testing, and observability before shipping substantial work.

## Trigger
Use when a change set is large, risky, or close to release.

## Inputs
- implementation plan or diff context
- affected services or features

## Steps
1. Review code-level correctness and boundary separation.
2. Review system-level trust boundaries and integration effects.
3. Review migration, deployment, and config safety.
4. Review tests, observability, and performance risks.

## Outputs
- review findings
- hardening checklist
- ship or hold recommendation

## Review checkpoints
- security and data correctness blockers are explicit
- rollout risks are named
- residual risks are documented
