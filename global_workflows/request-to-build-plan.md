# Workflow: Request To Build Plan

## Purpose
Convert a broad build request into structured implementation requirements and a skill-driven plan.

## Trigger
Use when the request is broad enough to need `product-intake-processor` plus several developer/designer skills.

## Inputs
- user request
- repo context
- known stack or runtime constraints

## Steps
1. Run `product-intake-processor`.
2. Identify the likely architecture, runtime, auth, data, UI, and environment concerns.
3. Route into the necessary specialist skills.
4. Produce a build plan grouped by concerns and dependencies.

## Outputs
- structured requirements
- skill routing summary
- build plan

## Review checkpoints
- runtime assumptions are explicit
- security concerns are called out early
- the request is decomposed into buildable concerns
