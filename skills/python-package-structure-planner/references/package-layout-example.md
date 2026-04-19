# Example Python Layout

```text
src/
  my_service/
    api/
    domain/
    adapters/
    workers/
    cli/
    config.py
tests/
scripts/
```

Use separate entrypoints for API, CLI, and workers while keeping shared domain logic importable from one package.
