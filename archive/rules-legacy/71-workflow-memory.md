# Workflow Memory & Project Context Rule

## Goal
Ensure every task, conversation, and generated output is persistently stored inside the project for traceability, continuity, and reuse.

---

## Core Behavior

For every meaningful task:

- Store conversation summary
- Store generated outputs
- Store related files
- Keep everything inside the project folder

---

## Storage Location

Use a structured internal workspace:

```
.project/
├─ conversations/
├─ decisions/
├─ tasks/
├─ generated/
└─ context/
```

---

## Rules

### 1. Conversation Logging
- Summarize each task interaction
- Store:
  - problem
  - approach
  - final solution
- Keep concise but meaningful

### 2. File Persistence
- Any generated code, prompts, workflows, or configs must be saved
- Do NOT leave outputs ephemeral

### 3. Context Awareness
- Always check existing stored context before solving
- Reuse previous decisions and patterns

### 4. Naming Convention
- Use clear, readable names
- Avoid random or auto-generated naming

### 5. Documentation Auto-Update (CRITICAL)
After completing any implementation, ALWAYS update the relevant docs:
- **New API endpoint** → append to `docs/api-contracts.md`
- **Architecture decision** → append to `docs/decisions.md`
- **New workflow** → append to `docs/workflow-logic.md`
- **New feature** → update `docs/feature-map.md`
- **Stack/library change** → update `docs/tech-stack.md`
- **Design change** → update `docs/design-principles.md` if principles shift

Never mark a task as complete without updating documentation.
Documentation is part of the deliverable, not a follow-up.

---

## Analogy

Treat this like:
- `.git` → version control
- `.vscode` → editor config
- `.project` → AI memory + reasoning layer

---

## Critical Rule

Never treat a task as isolated.

Every task must:
- reference context if available
- store output for future use
- update relevant documentation
