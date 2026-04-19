# /workflow-knowledge-review

This workflow guides the agent through the intentional promotion of project-specific knowledge into the general-purpose knowledge base.

## Intent
Use this workflow when the current project has yielded a reusable pattern, standard, or heuristic that applies across multiple projects and should be preserved in the global `knowledge/` library.

## Steps

### 1. Scan Project Context
- Analyze `docs/` (specifically `decisions.md` and `full.md`) to identify emerging patterns.
- Ensure the candidate for promotion is NOT project-specific.

### 2. Extract Pattern
- Distill the pattern into a concise, heuristic-based format.
- Remove all project-specific names, variables, and architectural references.

### 3. Verify Originality
- Check the existing `knowledge/` library to ensure the pattern is new or significantly improves an existing one.

### 4. Promote to Knowledge
- Create a new Knowledge Item or update an existing one in the `knowledge/` directory.
- Follow existing formatting standards for knowledge artifacts.

### 5. Update Documentation
- Note in the project's `decisions.md` that this pattern has been promoted to a global standard.
- Link the project documentation to the new Knowledge Item.

## Constraints
- **Do NOT** auto-update `knowledge/` without this workflow.
- **Do NOT** pollute `knowledge/` with one-off implementation details.
