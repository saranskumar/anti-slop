# 🚀 anti-slop: Antigravity Developer OS

**anti-slop** is a structured, agentic AI Operating System for the Google DeepMind Antigravity environment.

It transforms the AI from a basic assistant into a **disciplined software engineer + designer system** that builds real applications with:

* strong architecture
* secure defaults
* structured workflows
* consistent design + engineering standards

---

# 🧠 Core Philosophy

### 🔹 Production-First

* No toy outputs
* Everything is implementation-ready

### 🔹 Skill-Driven Execution

* Tasks are executed using **Skills**
* No random/unstructured responses

### 🔹 Workflow-Orchestrated

* Complex tasks follow **Workflows**

### 🔹 Rules-Enforced Behavior

* Defined in `GEMINI.md`
* Always active

### 🔹 Context-Aware System

* Reads project docs before acting
* Adapts to stack + architecture

---

# 📂 System Architecture

```text
project-root/
│
├── GEMINI.md
├── skills/
├── knowledge/
├── global_workflows/
├── docs/
├── templates/
│
├── .agent/
├── .project/
├── .agents/
└── .gitignore
```

---

# ⚙️ Components

## 🧠 Rules (`GEMINI.md`)

* Global system behavior
* Security + design + dev rules
* Skill & workflow usage enforcement

---

## 🧩 Skills (`skills/`)

* Task-specific execution modules
* Structured outputs
* Example:

  * system-architecture-designer
  * database-schema-designer
  * ux-flow-designer

---

## 🔄 Workflows (`global_workflows/`)

* Multi-step pipelines
* Use `/workflow-name` to trigger

---

## 📚 Knowledge (`knowledge/`)

* reusable engineering/design patterns

---

## 📄 Docs (`docs/`)

Must include:

* system-architecture.md
* full.md
* api-contracts.md
* tech-stack.md
* feature-map.md
* workflow-logic.md
* decisions.md

---

## 🧠 Workspace Memory

### `.agent/`

* conversations
* generated files
* runtime state

### `.project/`

* decisions
* tasks

---

## 🚫 Git Ignore

```gitignore
.agent/
.agents/
.project/
```

---

# 🛠️ INSTALLATION GUIDE

## 🌍 Option 1: Global Installation (All Projects)

Install once → works across all Antigravity workspaces.

---

### 📍 Windows

1. Open File Explorer
2. Go to:

```text
C:\Users\<YourUsername>\.gemini\antigravity\
```

If it doesn't exist → create it.

3. Copy:

```text
skills/ → C:\Users\<YourUsername>\.gemini\antigravity\skills\
knowledge/ → C:\Users\<YourUsername>\.gemini\antigravity\knowledge\
```

---

### 🍎 macOS

Open Terminal:

```bash
mkdir -p ~/.gemini/antigravity
```

Copy:

```bash
cp -r skills ~/.gemini/antigravity/
cp -r knowledge ~/.gemini/antigravity/
```

---

### 🐧 Linux

Same as macOS:

```bash
mkdir -p ~/.gemini/antigravity

cp -r skills ~/.gemini/antigravity/
cp -r knowledge ~/.gemini/antigravity/
```

---

## 📁 Option 2: Project Installation (Per Workspace)

Apply anti-slop to a specific project.

---

### Step 1: Copy core files

Copy into your project root:

```text
GEMINI.md
global_workflows/
docs/
```

---

### Step 2: Setup workspace folders

```bash
mkdir -p .agent/conversations
mkdir -p .agent/generated
mkdir -p .agent/state
mkdir -p .project/decisions
mkdir -p .project/tasks
```

---

### Step 3: Add `.gitignore`

```gitignore
.agent/
.agents/
.project/
```

---

### Step 4: Verify structure

```text
project/
  GEMINI.md
  skills/
  global_workflows/
  docs/
  .agent/
  .project/
```

---

## ✅ Verification

Open your project in Antigravity and run:

```text
Acknowledge GEMINI.md rules and list execution protocol
```

Expected:

* GSD protocol
* strict rules
* structured execution behavior

---

# ⚡ How It Works

```text
User Request
    ↓
Read docs/
    ↓
Select Skills
    ↓
Select Workflow (if needed)
    ↓
Execute
    ↓
Update docs
```

---

# 🧩 Skill Usage Guide

## Automatic usage

Agent:

* detects intent
* selects correct skills

---

## Manual hinting (optional)

```text
Use: system-architecture-designer

Task:
Design backend system

Context:
docs/system-architecture.md
```

---

## Skill Mapping

| Task     | Skills                                  |
| -------- | --------------------------------------- |
| UI       | ux-flow-designer, ui-component-designer |
| Backend  | backend-service-designer                |
| Database | database-schema-designer                |
| Auth     | auth-strategy-designer                  |
| Supabase | supabase-*                              |
| Python   | python-*                                |

---

# 🔄 Workflow Usage

## Trigger

```text
/workflow-name
```

---

## Use workflows when:

* task is complex
* repeatable
* multi-step

---

# 📄 Documentation Rules

After major work, update:

* system-architecture.md
* api-contracts.md
* feature-map.md
* workflow-logic.md
* tech-stack.md
* decisions.md
* full.md

---

## `docs/full.md`

Master doc containing:

* architecture
* features
* APIs
* workflows
* decisions
* system overview

---

# 🧠 Best Practices

## DO

* use structured prompts
* provide context
* follow workflows
* trust skills

---

## DON'T

* ask vague questions
* bypass system
* ignore docs
* mix unrelated tasks

---

# 💡 Example Prompt

```text
Task:
Build secure dashboard

Context:
docs/system-architecture.md

Requirements:
- Supabase auth
- role-based access
- responsive UI
```

---

# 🚀 Supported Domains

* Frontend (React, Next.js)
* Backend (Node, Python)
* APIs
* Supabase / Firebase
* UI/UX
* automation / CLI tools
* system architecture

---

# 🧠 Mental Model

```text
Rules      → behavior
Skills     → execution
Workflows  → orchestration
Docs       → context
```

---

# 🔥 Goal

Turn AI into:

> A disciplined engineer that builds real systems
> not a chat assistant that generates random outputs
