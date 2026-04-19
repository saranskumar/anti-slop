---
name: performance
description: Use when the app is slow, pages take too long to load, API responses exceed 200ms, memory usage is high, or renders are excessive. For profiling, identifying bottlenecks, optimizing React renders, reducing bundle size, improving database query speed, and measuring before/after improvements. Activate when user says "it's slow", "optimize this", "reduce load time", or "too many re-renders".
---

# Performance

Performance is not a last step. Every optimization that wasn't measured first is a guess. Every guess that ships to production is a liability. This skill forces you to measure, identify, then fix — in that order.

---

## When to Activate

- Page load > 3 seconds (users abandon at 3s)
- API response > 200ms consistently
- React components re-rendering on every keystroke
- Bundle size has grown without a clear reason
- Memory usage climbs over time (leak suspected)
- Database queries taking > 100ms
- User explicitly reports slowness

---

## The Law: Measure First, Optimize Second

```
Wrong: "I think this is slow, let me optimize it"
Right: "I measured this — it takes 800ms — here's the profile"
```

**Never optimize without a baseline.** If you can't show the before number, you can't claim the improvement.

---

## Step 1: Profile and Find the Bottleneck

### Frontend
```bash
# Chrome DevTools → Performance tab → Record
# Look for: Long Tasks (>50ms), layout thrashing, excessive re-renders

# React-specific
# Install React DevTools → Profiler tab
# Look for: components rendering when they shouldn't
```

### Backend / API
```bash
# Node.js
node --prof server.js
node --prof-process isolate-*.log > profile.txt

# Python
python -m cProfile -o output.prof script.py
python -m pstats output.prof

# Express / Fastify: add timing middleware
app.use((req, res, next) => {
  const start = Date.now();
  res.on('finish', () => console.log(`${req.method} ${req.url}: ${Date.now() - start}ms`));
  next();
});
```

### Database
```sql
-- PostgreSQL: find the slowest queries right now
SELECT query, mean_exec_time, calls
FROM pg_stat_statements
ORDER BY mean_exec_time DESC LIMIT 10;

-- Then EXPLAIN ANALYZE the worst offenders
EXPLAIN ANALYZE SELECT ...;
```

---

## Step 2: React Performance — Common Causes

### Excessive Re-renders
```typescript
// Problem: parent re-renders → all children re-render
// Diagnosis: React DevTools Profiler → "Why did this render?"

// Fix 1: React.memo for expensive components
const ExpensiveList = React.memo(({ items }: { items: Item[] }) => {
  return <div>{items.map(...)}</div>;
});

// Fix 2: useMemo for expensive computations
const sortedItems = useMemo(
  () => items.slice().sort((a, b) => a.name.localeCompare(b.name)),
  [items]  // ← only recompute when items changes
);

// Fix 3: useCallback for stable function references
const handleClick = useCallback((id: string) => {
  dispatch({ type: 'SELECT', id });
}, [dispatch]);
```

### Bundle Size
```bash
# Analyze what's in your bundle
npx vite-bundle-visualizer   # Vite
npx @next/bundle-analyzer    # Next.js

# Most common culprits:
# - moment.js (replace with date-fns or dayjs — 80% smaller)
# - lodash (use lodash-es and import individually)
# - full icon libraries (import only what you use)
```

### Lazy Loading
```typescript
// Routes — always lazy
const Dashboard = React.lazy(() => import('./pages/Dashboard'));
const Analytics = React.lazy(() => import('./pages/Analytics'));

// Heavy components — lazy on condition
const RichTextEditor = React.lazy(() => import('./components/Editor'));
```

---

## Step 3: API / Backend Performance

### N+1 Query Pattern
```typescript
// SLOW: 1 query for list + N queries for each item's data
const users = await db.users.findMany();
for (const user of users) {
  user.orders = await db.orders.findMany({ where: { userId: user.id } }); // N extra queries!
}

// FAST: 1 JOIN query for everything
const users = await db.users.findMany({
  include: { orders: true }  // Prisma — single query with JOIN
});
```

### Response Caching
```typescript
// Add cache-control headers for stable data
res.setHeader('Cache-Control', 'public, max-age=3600, stale-while-revalidate=86400');

// Redis for computed/expensive results
const cached = await redis.get(`user:${id}:stats`);
if (cached) return JSON.parse(cached);
const stats = await computeExpensiveStats(id);
await redis.setex(`user:${id}:stats`, 300, JSON.stringify(stats)); // 5min TTL
```

---

## Step 4: Verify the Improvement

Every optimization must produce a number comparison:

| Metric | Before | After | Improvement |
|--------|--------|-------|------------|
| Page load (LCP) | 4.2s | 1.8s | 57% faster |
| API response (p95) | 850ms | 120ms | 86% faster |
| Bundle size | 1.2MB | 380KB | 68% smaller |
| Re-renders on type | 47 | 3 | 94% fewer |

Use these tools:
- **Lighthouse** — page load, LCP, CLS, FID (web vitals)
- **WebPageTest** — real-world load performance
- **k6 / Artillery** — API load testing
- `performance.now()` — inline micro-benchmarks
- **React DevTools Profiler** — render counts and times

---

## Output Checklist

- [ ] Baseline performance measured BEFORE any changes
- [ ] Specific bottleneck identified (not guessed)
- [ ] Optimization targets the bottleneck directly
- [ ] Performance measured AFTER the fix
- [ ] Numbers documented (before/after table)
- [ ] No premature optimizations added for unmeasured paths

---

## Rule

Optimize what you've measured. Ignore what you haven't.
"This might be slow" is not a performance problem. A profiler reading is.
