---
description: Coordinating Auth, Firestore modeling, security rules, and Functions for Firebase features.
---

# Workflow: Firebase Feature Build Flow

## Purpose
Coordinate Firebase Auth, Firestore modeling, security rules, and Cloud Functions for one feature.

## Trigger
Use when the feature runs primarily on Firebase.

## Inputs
- feature requirements
- identity model
- query and rules requirements

## Steps
1. Design auth and identity model.
2. Design Firestore schema around queries and rule checks.
3. Design Cloud Functions for privileged or background logic.
4. Review security rules, tests, and environment handling.

## Outputs
- Firebase feature design
- rules and function plan
- validation checklist

## Review checkpoints
- client rules and trusted server logic are separated
- document shape supports both queries and rules
- admin-level code paths are explicit
