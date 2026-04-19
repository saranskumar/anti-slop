# 🚀 anti-slop: Antigravity Developer OS

**anti-slop** is a structured, agentic AI Operating System designed specifically for the Google DeepMind Antigravity developer environment. It transforms the AI from a simple chat assistant into a disciplined, production-ready engineer and designer capable of building real software with high standards.

## 🌟 The Philosophy
- **Production-Minded:** Outputs are focused on deployable code, not ideation-heavy artifacts.
- **Secure Defaults:** Explicit trust boundaries and security reviews are baked in.
- **"Search-First" Discipline:** Prevents context bloat by searching codebases before reading full files.
- **GSD Protocol:** Enforces the rigorous `SPEC → PLAN → EXECUTE → VERIFY → COMMIT` workflow.
- **No Slop:** Adheres strictly to design systems, high-quality engineering practices, and atomic workflows.

## 📂 Architecture

- `skills/` (1,400+): Focused, task-specific capabilities with precise routing descriptions.
- `GEMINI.md` / `rules/`: Always-on globally enforced guardrails for secure, maintainable engineering work.
- `knowledge/`: Reusable engineering and design heuristics (Knowledge Items).
- `global_workflows/`: Multi-step execution pipelines orchestrating multiple skills.
- `docs/`: System documentation, architecture templates, and project context.
- `templates/`: Markdown templates for scaffolding out new systems and specifications.

---

## 🛠️ How to Apply to Other Antigravity Environments

To supercharge your own Antigravity agent with the **anti-slop** OS, follow these steps:

### 1. Global Skills & Knowledge Installation (Cross-Project)
If you want these capabilities available across *all* your projects, copy the directories into your Antigravity global data folder.

**Windows:**
1. Navigate to your user's Antigravity data directory: `C:\Users\<YourUsername>\.gemini\antigravity`
2. Copy the contents of the `skills/` folder from this repo into `C:\Users\<YourUsername>\.gemini\antigravity\skills\`
3. Copy the contents of the `knowledge/` folder from this repo into `C:\Users\<YourUsername>\.gemini\antigravity\knowledge\`

*(Note: On Mac/Linux, this path is typically `~/.gemini/antigravity/`)*

### 2. Project-Specific Installation (Per-Workspace)
To enforce the rules, workflows, and documentation standards on a specific project workspace:

1. **Copy Rules:** Copy the `GEMINI.md` file (and `.antigravity_rules` if applicable) from this repository to the root of your target project. Antigravity will automatically read this file and adopt the master instructions and global rules.
2. **Copy Workflows:** Copy the `global_workflows/` directory to your project root to provide the agent with standardized playbooks.
3. **Initialize Context Docs:** Copy the `docs/` folder into your project. The agent is trained via `GEMINI.md` to automatically update these files (`api-contracts.md`, `tech-stack.md`, etc.) as it works, acting as long-term project memory.

### 3. Verification
Open your target project in your IDE with Antigravity active. Run a test prompt:
> "Acknowledge the Master Instruction in GEMINI.md and list out your execution rules."

If the agent responds with the GSD protocol and strict guidelines, the **anti-slop** Developer OS is active.

---

## 💻 Primary Supported Domains
- **Frontend Applications:** React, Next.js, Vite, shadcn/ui.
- **Backend Services:** Node.js, Express, Python APIs.
- **Serverless & Edge:** Supabase Edge Functions, Firebase Cloud Functions.
- **Infrastructure:** Databases, Auth, external integrations, caching strategies.

## 🤝 Prompting Guide
Once installed locally, prompt Antigravity using structured requests for maximum efficiency:

```text
Use: [Skill Name]

Task:
[Your specific task based on the SPEC]

Context:
[Mention relevant docs or files]
```
