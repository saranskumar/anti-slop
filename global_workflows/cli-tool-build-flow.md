---
description: Designing structure, UX, and packaging for local developer tools and automation CLIs.
---

# Workflow: CLI Tool Build Flow

## Purpose
Coordinate structure, commands, config, packaging, and UX for local developer tools or automation CLIs.

## Trigger
Use when the deliverable is a command-line tool or script-heavy local workflow.

## Inputs
- tool purpose
- target users
- runtime choice

## Steps
1. Design command surface and invocation UX.
2. Design package or script structure.
3. Design config, environment, and credential handling.
4. Review error handling, tests, and distribution strategy.

## Outputs
- CLI plan
- command structure
- packaging and safety notes

## Review checkpoints
- commands are discoverable and scriptable
- secrets and config are handled safely
- local versus CI or production execution is clear
