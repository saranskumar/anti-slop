# Antigravity Developer Framework

The Antigravity Developer Framework provides structured rules, skills, and workflows for consistent development within the Google DeepMind Antigravity environment. It transforms the AI from a basic assistant into a disciplined software engineer and designer system capable of building real applications with strong architecture, secure defaults, and consistent engineering standards.

## Key Features

* **Production-First:** Generates implementation-ready code rather than ideation artifacts.
* **Skill-Driven Execution:** Executes tasks using modular, specific skills to prevent unstructured responses.
* **Workflow Orchestration:** Manages complex tasks through predefined, multi-step pipelines.
* **Rule Enforcement:** Controls behavior through globally defined constraints that are always active.
* **Context-Aware:** Reads and dynamically updates system documentation before acting to align with specific stack and architectural requirements.

## Architecture Overview

The system operates using four primary conceptual components:

1. **Rules (`GEMINI.md`)**: Always-on constraints that dictate global system behavior, security, design, and development standards.
2. **Skills (`skills/`)**: Modular execution units that handle task-specific logic (e.g., `system-architecture-designer`, `database-schema-designer`). They are selected automatically based on the user's task.
3. **Workflows (`global_workflows/`)**: Multi-step pipelines designed to handle complex or repeatable execution sequences.
4. **Docs (`docs/`)**: The continuous project context and memory, automatically updated by the system to maintain accurate technical states.

## Installation

### Global Installation (All Projects)

Install the framework globally to make skills and knowledge accessible across all your local Antigravity workspaces.

#### Windows

1. Open File Explorer.
2. Ensure your Antigravity data directory exists at `C:\Users\<YourUsername>\.gemini\antigravity\`.
3. Copy the directories from this repository into your data directory:
   * `skills/` -> `C:\Users\<YourUsername>\.gemini\antigravity\skills\`
   * `knowledge/` -> `C:\Users\<YourUsername>\.gemini\antigravity\knowledge\`

#### macOS and Linux

Open your terminal and run:

```bash
mkdir -p ~/.gemini/antigravity
cp -r skills ~/.gemini/antigravity/
cp -r knowledge ~/.gemini/antigravity/
```

### Project-Level Installation (Per Workspace)

To apply the framework to a specific local project, enforce the rules, workflows, and documentation standards in the project root.

1. **Copy Core Files:**
   Copy the following files and directories into your target project's root:
   * `GEMINI.md`
   * `global_workflows/`
   * `docs/`

2. **Setup State Directories:**
   Create the required local directories for agent context and project state.
   ```bash
   mkdir -p .agent/conversations .agent/generated .agent/state
   mkdir -p .project/decisions .project/tasks
   ```

3. **Ignore State Directories:**
   Add the following entries to your project's `.gitignore` file:
   ```gitignore
   .agent/
   .agents/
   .project/
   ```

## Usage Guide

The framework automatically handles standard development tasks based on intent, but behaves best with structured prompting.

### Rules

Rules are defined in `GEMINI.md` and are automatically referenced on every interaction. They establish hard boundaries on what the agent should and should not do. You do not need to manually trigger rules; simply ensure the `GEMINI.md` file is present in your project root.

### Skills

Skills are modular execution units. The agent automatically selects the appropriate skill based on your request. If you wish to manually enforce a skill, prepend it to your prompt:

```text
Use: system-architecture-designer

Task:
Design the backend system for the user authentication portal.

Context:
See docs/system-architecture.md.
```

### Workflows

Workflows are multi-step pipelines. Invoke a specific workflow directly using the standard slash-command syntax.

```text
/secure-feature-implementation-flow
```

## Project Structure

A typical project utilizing the Antigravity Developer Framework will look like this:

```text
your-project-root/
├── GEMINI.md
├── skills/
├── knowledge/
├── global_workflows/
├── docs/
├── templates/
├── .agent/
├── .project/
└── .gitignore
```

## Documentation System

The framework relies on the `/docs` directory to act as the source of truth for the project context. The agent will automatically update these files as architecture or requirements change. Ensure your project has the baseline documents initialized:

* `system-architecture.md`
* `full.md`
* `api-contracts.md`
* `tech-stack.md`
* `feature-map.md`
* `workflow-logic.md`
* `decisions.md`

## Best Practices

* **Use structured prompts:** Separate your prompt into `Task`, `Requirements`, and `Context`.
* **Provide context:** Always guide the agent to relevant files in the `docs/` folder.
* **Ensure atomic tasks:** Do not cluster completely unrelated sub-modules into a single prompt.
* **Keep documents updated:** Review the updates made to `docs/` by the system so that future context window ingestions are accurate.

## Verification

To verify the framework is installed and functioning correctly in your project, ask the agent the following:

> "Acknowledge the rules defined in GEMINI.md and list out your execution protocol."

If the agent returns the expected structured execution protocol and acknowledges the system constraints, the framework is active.

## Supported Use Cases

* Frontend Web Applications (React, Next.js)
* Backend Services (Node.js, Express, Python APIs)
* API Design and Implementation
* Supabase and Firebase Integrations
* UI/UX Flow Design
* Automation and CLI tools
* Technical Systems Architecture
