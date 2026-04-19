# Migration Safety Checklist

- identify backward-compatible versus breaking changes
- decide rollout order across code, schema, workers, and config
- verify rollback path or compensating strategy
- define monitoring during and after rollout
- call out data rewrite or lock-risk operations explicitly
