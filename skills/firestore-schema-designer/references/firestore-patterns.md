# Firestore Patterns

## Query-first modeling
- Design collections around reads you actually need.

## Denormalization
- Duplicate small immutable snapshots when query simplicity justifies it.

## Rules-aware structure
- Keep ownership and visibility fields on documents that rules must check often.

## Aggregates
- Use counters or derived documents deliberately; avoid ad hoc fan-out without maintenance strategy.
