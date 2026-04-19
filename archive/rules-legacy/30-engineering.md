# Engineering Rule

## Core

- implement complete logic
- connect UI + state + backend

## Architecture

- follow existing project structure
- separate concerns properly
- keep business logic separate from presentation
- avoid duplicating fetch, transform, validation, or mapping logic

## Data Flow

- predictable
- traceable
- minimal duplication
- keep derived state minimal
- avoid fragile implicit coupling between components

## Feature Implementation Checklist

- inputs and validation
- empty/loading/error states
- success states
- permissions/role considerations if applicable
- analytics hooks if relevant
- responsive behavior if relevant

## When Adding a Feature

Always identify:
- source of truth
- data contract
- UI states
- failure modes
- follow-up impacts on existing screens

## Must Handle

- loading states
- error states
- empty states

## Avoid

- partial implementations
- duplicate logic
- unnecessary abstraction
- fake sample code unless explicitly requested
- changing unrelated files
- duplicate components or duplicate logic
