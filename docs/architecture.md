# Architecture

## System Structure

```
GEMINI.md                       → centralized always-on workspace rules
.antigravity/
├─ skills/                      → active skill surface
├─ global_workflows/            → active workflow surface
├─ archive/                     → inactive legacy rules and skills
└─ notes/                       → workspace audit and cleanup notes

docs/                           → project context and living source-of-truth docs
.agent/                         → conversations, generated artifacts, runtime state
.project/                       → decisions and task state
```

## How Rules, Skills, Workflows, And Docs Interact

1. `GEMINI.md` defines always-on execution rules.
2. `docs/` provides project-aware context before execution modules are chosen.
3. `.antigravity/skills/` provides narrow, structured execution capabilities.
4. `.antigravity/global_workflows/` coordinates repeated multi-step implementation patterns.
5. Documentation is updated after significant changes so context remains current.

## Execution Flow

```
User prompt
  → review relevant docs in docs/
  → understand stack, architecture, and design constraints
  → select the most relevant skill or workflow
  → execute with structured output
  → update documentation if the implementation changed the project
```

## Preferred Stack Defaults

| Layer | Preferred default |
|---|---|
| Frontend | React + Tailwind CSS |
| Components | shadcn/ui |
| Client State | Zustand |
| Server State | TanStack Query |
| Validation | Zod |
| Backend default | Supabase |
| Storage | Supabase Storage |
| Testing | Playwright + Vitest |
| Tooling | pnpm, TypeScript, ESLint, Prettier, Husky |

These are defaults, not blind assumptions. The workspace must stay project-aware before applying stack-specific patterns.
