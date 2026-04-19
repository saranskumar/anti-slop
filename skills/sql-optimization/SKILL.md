---
name: sql-optimization
description: Use when debugging slow SQL queries, designing database indexes, or rewriting queries for better performance. For EXPLAIN analysis, index strategy, N+1 problem resolution, and query optimization patterns.
---

# SQL Optimization

Slow queries are not a database problem — they are an engineering failure. Every query that hits production without an execution plan review is a time bomb. This skill gives you the systematic methodology to find bottlenecks, eliminate waste, and make queries provably fast.

---

## When to Activate This Skill

- A query takes more than 100ms in development — that's already too slow
- A page load triggers more than 5 database queries — likely N+1
- Table scans appear in EXPLAIN output — index is missing or wrong
- Response times degrade as data grows — unscalable query design
- A query works fine with 1,000 rows, breaks at 100,000 — time to fix it now

**Do not guess. Do not eyeball. Measure, then act.**

---

## Step 1: Get the Execution Plan — No Exceptions

Never optimize what you haven't measured. Run `EXPLAIN ANALYZE` before touching a single line of SQL.

```sql
EXPLAIN ANALYZE
SELECT u.id, u.email, COUNT(o.id) AS order_count
FROM users u
LEFT JOIN orders o ON o.user_id = u.id
WHERE u.created_at > NOW() - INTERVAL '30 days'
GROUP BY u.id;
```

**What to look for:**

| Signal | Meaning | Action Required |
|--------|---------|----------------|
| `Seq Scan` on large table | Missing or unused index | Add a targeted index |
| `Rows Removed by Filter: N` is very high | Non-selective WHERE clause | Revisit filter or composite index |
| `Nested Loop` on large sets | Join without proper index | Index the join column |
| `actual time` >> `estimated time` | Stale table statistics | Run `ANALYZE table_name` |
| `Hash Join` on small lookup table | Acceptable, monitor at scale | Consider materialized CTE |
| `cost=0..99999` | Planner guessing badly | Update statistics, add hint if needed |

---

## Step 2: Index with Precision — Not Blindly

Every index has a write cost. Add indexes surgically, not speculatively.

### Composite Index — Column Order Is Everything
```sql
-- Query filters by status, then sorts by created_at
-- WRONG: (created_at, status) — wrong order, table scan still happens
-- RIGHT: (status, created_at) — matches filter-first, then sort
CREATE INDEX idx_orders_status_created ON orders (status, created_at DESC);
```

**Rule:** Equality columns first. Range/sort columns last.

### Partial Index — Filter Out Noise
```sql
-- Only ever query active users — don't index the inactive ones
CREATE INDEX idx_users_active_email ON users (email)
WHERE status = 'active';
```

### Covering Index — Eliminate the Heap Fetch
```sql
-- Query needs id, email, created_at — include them all, avoid row lookup
CREATE INDEX idx_users_covering ON users (status, created_at DESC)
INCLUDE (id, email);
```

### Expression Index — Index What You Actually Query
```sql
-- You always filter on LOWER(email) — index that expression
CREATE INDEX idx_users_lower_email ON users (LOWER(email));
```

---

## Step 3: Kill the N+1 — It's Always Worse Than You Think

An N+1 query looks harmless with 10 records. With 10,000 records it's 10,001 queries. That's not a performance issue — it's a collapse.

**Before (N+1 — never acceptable in production):**
```sql
-- Loop in application code:
SELECT * FROM orders WHERE user_id = ?  -- runs N times
```

**After (single JOIN — always preferred):**
```sql
SELECT u.id, u.email, o.id AS order_id, o.total
FROM users u
INNER JOIN orders o ON o.user_id = u.id
WHERE u.id = ANY($1::int[]);  -- batch, not loop
```

**Or use batch loading when JOIN isn't clean:**
```sql
-- Fetch all needed records in one shot
SELECT * FROM orders WHERE user_id = ANY(ARRAY[1, 2, 3, ...]);
```

---

## Step 4: Rewrite Anti-Patterns — Common Offenders

### Subquery → JOIN (always faster on indexed tables)
```sql
-- Slow: correlated subquery re-executes per row
SELECT * FROM users WHERE id IN (SELECT user_id FROM orders WHERE total > 1000);

-- Fast: JOIN executes once
SELECT DISTINCT u.*
FROM users u
INNER JOIN orders o ON o.user_id = u.id AND o.total > 1000;
```

### EXISTS vs COUNT — Stop Counting What You Don't Need
```sql
-- Slow: counts all rows just to check existence
SELECT COUNT(*) FROM orders WHERE user_id = $1;

-- Fast: stops at the first match
SELECT EXISTS (SELECT 1 FROM orders WHERE user_id = $1);
```

### Keyset Pagination — Never Use OFFSET at Scale
```sql
-- Broken at scale: OFFSET 10000 still scans 10,000 rows first
SELECT * FROM orders ORDER BY created_at DESC LIMIT 20 OFFSET 10000;

-- Correct: seek by the last seen value — O(log n) instead of O(n)
SELECT * FROM orders
WHERE created_at < $last_seen_created_at
ORDER BY created_at DESC
LIMIT 20;
```

### Avoid Functions on Indexed Columns in WHERE
```sql
-- Slow: function on column breaks index usage
WHERE DATE(created_at) = '2024-01-01'

-- Fast: range filter preserves index
WHERE created_at >= '2024-01-01' AND created_at < '2024-01-02'
```

---

## Step 5: Validate — Prove It's Actually Faster

Optimization without measurement is just guessing with extra steps.

```sql
-- Before: capture baseline timing
EXPLAIN (ANALYZE, BUFFERS, FORMAT TEXT) SELECT ...;

-- Apply index / rewrite

-- After: compare actual time, buffer hits, rows
EXPLAIN (ANALYZE, BUFFERS, FORMAT TEXT) SELECT ...;
```

**What counts as a win:**
- `actual time` reduced by >50%
- `Seq Scan` replaced by `Index Scan`
- Buffer hits (`shared hit`) increased, reads (`shared read`) decreased
- Rows estimated ≈ rows actual (planner accuracy improved)

---

## Monitoring — Don't Ship Without Visibility

```sql
-- PostgreSQL: find your slowest queries right now
SELECT query, mean_exec_time, calls, total_exec_time
FROM pg_stat_statements
ORDER BY mean_exec_time DESC
LIMIT 20;

-- Find tables with no indexes being hit
SELECT schemaname, tablename, seq_scan, idx_scan
FROM pg_stat_user_tables
WHERE seq_scan > idx_scan
ORDER BY seq_scan DESC;
```

---

## Output Checklist

Before closing this task:

- [ ] EXPLAIN ANALYZE run before and after optimization
- [ ] Sequential scans eliminated or justified
- [ ] Indexes added are composite, partial, or covering — not naive single-column
- [ ] N+1 queries replaced with JOINs or batch queries
- [ ] OFFSET-based pagination replaced with keyset if table > 10k rows
- [ ] Performance improvement measured and documented
- [ ] `pg_stat_statements` checked for any other regressions

---

## Rule

If you didn't run EXPLAIN ANALYZE before and after, you didn't optimize — you improvised.
Every slow query that reaches production is a choice. Make the right one.
