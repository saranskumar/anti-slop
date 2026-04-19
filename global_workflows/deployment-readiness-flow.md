# Workflow: Deployment Readiness Flow

## Purpose
Assess whether a service, tool, app, or serverless system is ready for the target environment.

## Trigger
Use when software is nearing release to local teams, staging, or production.

## Inputs
- target runtime and environment
- deployment method
- config and dependency map

## Steps
1. Review environment strategy and config shape.
2. Review secrets handling and external dependencies.
3. Review observability, rollback, and migration implications.
4. Review performance, tests, and operational ownership.

## Outputs
- deployment readiness report
- blockers
- go-live checklist

## Review checkpoints
- environment assumptions are explicit
- rollback and failure visibility exist
- runtime-specific constraints are covered
