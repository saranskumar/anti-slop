---
name: workflow-builder
description: Use when the team needs a repeatable multi-step workflow, pipeline, or operating sequence that connects multiple skills, systems, or product stages. Trigger on requests to design a workflow from idea to launch, onboarding to retention, or request to execution.
---

# Goal
Define procedural workflows that orchestrate multiple skills and outputs.

# When to Use
- A task spans several stages or capabilities.
- A team wants repeatable process documentation.
- The system needs a user-triggered pipeline rather than static knowledge.

# Instructions
1. Define the workflow trigger, inputs, outputs, and stopping conditions.
2. Break the workflow into ordered stages with clear handoffs.
3. Attach the right specialist skills to each stage.
4. Define validation checkpoints, failure handling, and re-entry points.
5. Consult `examples/idea-to-launch-workflow.md` when shaping product workflows.

# Constraints
- Do not put always-on rules into workflows.
- Do not make workflows so generic that they stop being executable.
- Keep branching logic explicit.

# Output Format
- Workflow summary
- Inputs and outputs
- Ordered steps
- Validation points
- Failure handling

# Examples
- "Create a workflow from idea evaluation to launch."
- "Design a repeatable feature-shipping flow."
