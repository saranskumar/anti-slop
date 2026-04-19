# Workflow Logic

This file must be updated whenever a workflow is added or changed.

The active workflow set is developer- and designer-oriented rather than ideation-oriented.

## Active Workflows

### Request To Build Plan
- **Trigger**: Broad build request that still needs structured implementation requirements
- **Purpose**: convert the request into project-aware implementation concerns and a skill-driven build plan

### Secure Feature Implementation Flow
- **Trigger**: feature work that crosses UI, backend, auth, data, or trust boundaries
- **Purpose**: coordinate UX, backend, auth, validation, and review work in a consistent order

### Database Design To API Flow
- **Trigger**: data model or schema work that drives service and API design
- **Purpose**: move from ownership-aware schema design to safe service and API contracts

### UI Flow To Component Plan
- **Trigger**: feature-level design work that needs screens, components, state, and data-flow planning
- **Purpose**: translate user flow into implementation-ready frontend structure

### Auth Implementation Flow
- **Trigger**: sign-in, membership, roles, access control, policy, or security-rule work
- **Purpose**: coordinate auth strategy, access-control design, provider-specific implementation, and hardening

### Supabase Feature Build Flow
- **Trigger**: feature work centered on Supabase
- **Purpose**: align schema, auth, RLS, storage, edge functions, and migration safety

### Firebase Feature Build Flow
- **Trigger**: feature work centered on Firebase
- **Purpose**: align auth, Firestore modeling, security rules, and Cloud Functions

### Python Service Build Flow
- **Trigger**: Python service, worker, CLI, or automation-heavy backend work
- **Purpose**: coordinate package structure, runtime design, config, tests, and deployment readiness

### CLI Tool Build Flow
- **Trigger**: local or operator-facing command-line tool work
- **Purpose**: define command UX, structure, config handling, and packaging

### Backend API Hardening Flow
- **Trigger**: API or service paths need security, validation, or operational review
- **Purpose**: harden boundary handling, auth, errors, performance, and observability

### Review And Hardening Flow
- **Trigger**: substantial implementation is nearing ship or merge
- **Purpose**: coordinate code review, system review, migration safety, testing, and observability

### Deployment Readiness Flow
- **Trigger**: release or deployment into local team usage, staging, or production
- **Purpose**: verify config, secrets, dependencies, rollback, runtime assumptions, and operator visibility
