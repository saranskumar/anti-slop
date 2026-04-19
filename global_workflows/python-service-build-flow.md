---
description: Designing Python package structure, APIs, workers, and operational strategy.
---

# Workflow: Python Service Build Flow

## Purpose
Coordinate Python service design across package layout, API or worker structure, config, and operational concerns.

## Trigger
Use when building or refactoring a Python service, worker, CLI, or automation-heavy backend.

## Inputs
- service request
- runtime constraints
- deployment model

## Steps
1. Design package and service structure.
2. Design API, worker, CLI, or automation entrypoints as needed.
3. Design config, secrets, and environment strategy.
4. Review tests, observability, and deployment readiness.

## Outputs
- Python service plan
- structure recommendations
- operational checklist

## Review checkpoints
- package layout supports growth and reuse
- environment and secret handling are explicit
- long-running or background work has failure handling
