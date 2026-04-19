# Workflow: Database Design To API Flow

## Purpose
Move from data model design to safe backend service and API contracts.

## Trigger
Use when new tables, collections, or entity changes drive API or service work.

## Inputs
- entity requirements
- access model
- runtime and storage choice

## Steps
1. Design schema and ownership rules.
2. Design access control and trust boundaries.
3. Design service responsibilities and API contracts.
4. Review migration safety and test implications.

## Outputs
- schema plan
- access model
- API/service plan

## Review checkpoints
- schema reflects access patterns
- API contracts do not leak internal structure
- migration and rollback risks are explicit
