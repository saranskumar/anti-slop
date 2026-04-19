---
name: frontend-expert
description: Use when creating React/TypeScript components, pages, or features. For modern patterns including Suspense, useSuspenseQuery, lazy loading, MUI v7 styling, TanStack Router, and performance optimization.
---

# Frontend Expert — React/TypeScript

Modern React/TypeScript patterns for production-grade applications. No spinners. No layout shift. No `any`. Every component ships with Suspense, strict types, and measurable performance.

---

## When to Activate This Skill

- Creating new React components, pages, or feature modules
- Implementing data fetching with TanStack Query
- Setting up routing with TanStack Router
- Reviewing existing components for performance or type safety issues
- Migrating legacy class components or old patterns to modern React
- Debugging hydration, Suspense, or rendering issues

---

## Core Architecture Principles

### Suspense-First — No Exceptions
Loading spinners with early returns cause layout shift. Early returns are banned. Every async boundary uses `<SuspenseLoader>`.

```typescript
// ❌ NEVER — Causes layout shift, breaks Suspense boundaries
if (isLoading) return <LoadingSpinner />;

// ✅ ALWAYS — Consistent layout, proper Suspense integration
<Suspense fallback={<SuspenseLoader />}>
  <YourComponent />
</Suspense>
```

### useSuspenseQuery — Primary Data Fetching Pattern
```typescript
// ❌ NEVER — isLoading + early return pattern
const { data, isLoading } = useQuery({ queryKey: ['user', id], queryFn: ... });
if (isLoading) return <Spinner />;

// ✅ ALWAYS — Suspends until data is ready, no loading state to manage
const { data } = useSuspenseQuery({
  queryKey: ['user', id],
  queryFn: () => userApi.getUser(id),
});
```

### Strict TypeScript — Zero Tolerance
- `strict: true` in tsconfig — non-negotiable
- No `any`. Use `unknown` then narrow.
- All props typed with explicit interfaces — never inferred from usage alone
- Use `import type` for type-only imports

---

## Component Checklist

Before shipping any component:

```markdown
- [ ] Props typed with explicit interface
- [ ] Uses React.FC<Props> pattern
- [ ] Heavy component: wrapped in React.lazy() + Suspense
- [ ] Data fetching: useSuspenseQuery only
- [ ] Event handlers: useCallback if passed to children
- [ ] Expensive computations: useMemo
- [ ] Import aliases used: @/, ~types, ~components, ~features
- [ ] Styles: inline sx if <100 lines, separate file if >100 lines
- [ ] No early returns for loading states
- [ ] Default export at bottom, named const at top
- [ ] User notifications: useMuiSnackbar only
```

## Feature Checklist

```markdown
- [ ] Directory: features/{feature-name}/
- [ ] Subdirectories: api/, components/, hooks/, helpers/, types/
- [ ] API service: api/{feature}Api.ts
- [ ] Types defined in types/
- [ ] Route: routes/{feature-name}/index.tsx
- [ ] Feature components are lazy loaded
- [ ] Suspense boundaries in place
- [ ] Public API exported from feature index.ts
```

---

## Import Aliases

| Alias | Resolves To | Example |
|-------|-------------|---------|
| `@/` | `src/` | `import { apiClient } from '@/lib/apiClient'` |
| `~types` | `src/types` | `import type { User } from '~types/user'` |
| `~components` | `src/components` | `import { SuspenseLoader } from '~components/SuspenseLoader'` |
| `~features` | `src/features` | `import { authApi } from '~features/auth'` |

Always use aliases. Never use relative paths that traverse more than one directory.

---

## File Organization

```
src/
  features/
    {feature}/
      api/         # API service functions — all fetching goes here
      components/  # Feature-specific components
      hooks/       # Custom hooks for this feature
      helpers/     # Pure utility functions
      types/       # TypeScript interfaces and types
      index.ts     # Public API — only export what consumers need
  components/      # Truly reusable cross-feature components
  routes/          # TanStack Router file-based routes
  lib/             # Shared utilities, API client, config
  types/           # Global TypeScript types
```

**Rule:** Business logic lives in features. If it's shared, it lives in `lib/`. If it's UI-only, it lives in `components/`. Never scatter logic across unrelated files.

---

## MUI v7 Patterns

### Grid — v7 Syntax Only
```typescript
// ✅ v7 — always use size prop
<Grid size={{ xs: 12, md: 6 }}>

// ❌ Never — old syntax, will break
<Grid xs={12} md={6}>
```

### Styling — sx Prop with SxProps<Theme>
```typescript
import type { SxProps, Theme } from '@mui/material';

// Inline: use for <100 lines of style
<Box sx={{ p: 2, display: 'flex', gap: 1 }}>

// Separate: use for >100 lines — define outside component
const styles: Record<string, SxProps<Theme>> = {
  container: { p: 2, display: 'flex' },
  card: { borderRadius: 2, boxShadow: 1 },
};
```

### Notifications — useMuiSnackbar Only
```typescript
// ❌ Never — raw alert, toast from random library
alert('Saved!');

// ✅ Always — consistent, dismissible, accessible
const { showSnackbar } = useMuiSnackbar();
showSnackbar({ message: 'Saved successfully', severity: 'success' });
```

---

## API Route Format

```typescript
'/form/route'      // ✅ Always — no /api prefix
'/api/form/route'  // ❌ Never — prefix is added by the client
```

---

## Performance Patterns

### Lazy Load Heavy Components
```typescript
// Every route and heavy component must be lazy loaded
const DataGrid = React.lazy(() => import('@/components/DataGrid'));
const ChartModule = React.lazy(() => import('~features/analytics/components/Chart'));
```

### Memoization Rules
```typescript
// useMemo: expensive computations only — not everything
const sortedData = useMemo(
  () => data.slice().sort((a, b) => b.createdAt - a.createdAt),
  [data]
);

// useCallback: event handlers passed to child components only
const handleSubmit = useCallback((values: FormValues) => {
  mutate(values);
}, [mutate]);

// React.memo: expensive components that re-render often with same props
export const ExpensiveTable = React.memo(({ rows }: TableProps) => { ... });
```

**Rule:** Don't memoize everything. Premature memoization adds complexity without benefit. Measure first.

---

## Component Template

```typescript
import React, { useState, useCallback } from 'react';
import { Box, Paper, Typography } from '@mui/material';
import { useSuspenseQuery } from '@tanstack/react-query';
import { featureApi } from '../api/featureApi';
import type { SxProps, Theme } from '@mui/material';
import type { FeatureData } from '~types/feature';

interface MyComponentProps {
  id: number;
  onAction?: (data: FeatureData) => void;
}

const styles: Record<string, SxProps<Theme>> = {
  container: { p: 2 },
  card: { p: 3, borderRadius: 2 },
};

export const MyComponent: React.FC<MyComponentProps> = ({ id, onAction }) => {
  const [localState, setLocalState] = useState<string>('');

  const { data } = useSuspenseQuery({
    queryKey: ['feature', id],
    queryFn: () => featureApi.getFeature(id),
    staleTime: 5 * 60 * 1000, // 5 minutes — set explicitly, never rely on default
  });

  const handleAction = useCallback(() => {
    setLocalState('updated');
    onAction?.(data);
  }, [data, onAction]);

  return (
    <Box sx={styles.container}>
      <Paper sx={styles.card}>
        <Typography variant="h6">{data.title}</Typography>
      </Paper>
    </Box>
  );
};

export default MyComponent;
```

---

## TypeScript Standards

```typescript
// ✅ Explicit interface — always
interface UserCardProps {
  user: User;
  onDelete: (id: string) => void;
  isLoading?: boolean;
}

// ✅ Type import — always for type-only
import type { User } from '~types/user';

// ✅ Unknown + narrowing — when type is uncertain
function handleResponse(data: unknown): User {
  const parsed = UserSchema.parse(data); // Zod parse
  return parsed;
}

// ❌ Never
const data: any = response; // any is banned
```

---

## Output Checklist

Before marking any frontend task done:

- [ ] No `any` types — strict TypeScript throughout
- [ ] No early returns for loading states — Suspense only
- [ ] All data fetching via `useSuspenseQuery`
- [ ] Heavy components lazy loaded with `React.lazy`
- [ ] Event handlers memoized with `useCallback` if passed to children
- [ ] MUI v7 grid syntax used (`size` prop)
- [ ] Styles: inline if <100 lines, separate `styles` object if >100
- [ ] Import aliases used — no deep relative paths
- [ ] Feature has proper directory structure (api/components/hooks/helpers/types)
- [ ] Public API exported from `index.ts`
- [ ] User feedback via `useMuiSnackbar` — no raw alerts

---

## Rule

A component that causes layout shift is broken.
A component with `any` types is untested.
A component without Suspense is incomplete.
Ship none of the above.
