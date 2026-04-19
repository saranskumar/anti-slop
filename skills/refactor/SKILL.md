---
name: refactor
description: Use when code is hard to read, has duplication, is too complex, has grown beyond 300 lines, or needs restructuring without changing behavior. For extracting functions, simplifying nested logic, removing dead code, improving naming, splitting large files, and applying clean code principles. Activate when user says "clean this up", "this is messy", "simplify", "extract", or "improve readability".
---

# Refactor

Refactoring is the discipline of improving code structure without changing behavior. Every change that makes code harder to read is debt. Every refactor that ships without tests verifying behavior is a risk. This skill enforces both.

---

## When to Activate

- Function is longer than 30 lines
- File is longer than 300 lines
- Logic is nested 3+ levels deep
- Same logic exists in 2+ places
- Variable or function name requires a comment to understand
- Reading the code requires keeping more than 5 things in mind at once
- "I'll clean this up later" has been said about this code

---

## Non-Negotiable: Tests Before Refactoring

If there are no tests covering the code to be refactored, write them first. Otherwise, you cannot prove behavior was preserved.

```bash
# Run tests before and after — output must match
npm test -- --coverage 2>&1 | tail -20
```

If tests don't exist and can't be added quickly: refactor only the structure (names, extraction), not the logic.

---

## Pattern 1: Remove Deep Nesting — Flat is Better

```typescript
// Before: 3+ levels of nesting — hard to follow
function processOrder(order) {
  if (order) {
    if (order.status === 'paid') {
      if (order.items.length > 0) {
        return order.items.map(item => item.price * 1.1);
      }
    }
  }
}

// After: early returns — linear flow, easy to read
function processOrder(order) {
  if (!order) return null;
  if (order.status !== 'paid') return null;
  if (order.items.length === 0) return [];
  return order.items.map(item => item.price * 1.1);
}
```

**Rule:** If code is nested more than 2 levels deep, introduce early returns.

---

## Pattern 2: Extract Functions — One Thing Per Function

```typescript
// Before: one function doing 4 things
async function handleCheckout(cart) {
  // validate
  if (!cart.items.length) throw new Error('Empty cart');
  if (!cart.userId) throw new Error('No user');
  
  // calculate
  const subtotal = cart.items.reduce((sum, i) => sum + i.price, 0);
  const tax = subtotal * 0.08;
  const total = subtotal + tax;
  
  // save
  const order = await db.orders.create({ userId: cart.userId, total });
  
  // notify
  await sendEmail(cart.userId, `Order ${order.id} confirmed`);
  return order;
}

// After: each function does one thing
function validateCart(cart) {
  if (!cart.items.length) throw new Error('Empty cart');
  if (!cart.userId) throw new Error('No user');
}

function calculateTotal(items: CartItem[]) {
  const subtotal = items.reduce((sum, i) => sum + i.price, 0);
  return { subtotal, tax: subtotal * 0.08, total: subtotal * 1.08 };
}

async function handleCheckout(cart) {
  validateCart(cart);
  const { total } = calculateTotal(cart.items);
  const order = await db.orders.create({ userId: cart.userId, total });
  await sendEmail(cart.userId, `Order ${order.id} confirmed`);
  return order;
}
```

---

## Pattern 3: Remove Duplication — One Source of Truth

```typescript
// Before: same validation logic in 3 places
function createUser(email) {
  if (!email.includes('@')) throw new Error('Invalid email');
  // ...
}
function updateUser(email) {
  if (!email.includes('@')) throw new Error('Invalid email');
  // ...
}

// After: extracted, one place to change
function validateEmail(email: string) {
  if (!email.includes('@')) throw new Error('Invalid email');
}
function createUser(email) { validateEmail(email); /* ... */ }
function updateUser(email) { validateEmail(email); /* ... */ }
```

---

## Pattern 4: Name What You Mean

```typescript
// Before: names that require a comment to understand
const d = new Date();
const u = users.filter(x => x.a === true);
const r = u.map(x => ({ ...x, t: x.c * 1.08 }));

// After: names that explain themselves
const today = new Date();
const activeUsers = users.filter(user => user.isActive === true);
const usersWithTax = activeUsers.map(user => ({
  ...user,
  totalWithTax: user.subtotal * 1.08,
}));
```

**Rule:** If you need a comment to explain what a variable is, rename it instead.

---

## Pattern 5: Split Large Files

When a file exceeds 300 lines, it's doing too much.

```
Before:
  userService.ts  (650 lines — auth + profile + settings + billing)

After:
  user/
    auth.ts        (login, logout, session)
    profile.ts     (read, update profile)
    settings.ts    (preferences, notifications)
    billing.ts     (subscription, payment)
    index.ts       (re-exports the public API)
```

---

## What NOT to Do

- **Don't change behavior** while refactoring — one concern at a time
- **Don't rename and restructure** in the same commit — split the changes
- **Don't refactor without tests** — you won't know if you broke it
- **Don't over-abstract** — a helper used once is just indirection that adds cost
- **Don't add patterns that don't exist yet** — solve today's problem, not tomorrow's

---

## Output Checklist

- [ ] Tests run and passed BEFORE refactoring
- [ ] Behavior is identical before and after (tests still pass)
- [ ] No nested code deeper than 2 levels remains
- [ ] No function longer than 30 lines remains
- [ ] No duplication exists in the changed code
- [ ] All names self-describe without needing comments
- [ ] No dead code in the final result
- [ ] Tests run and passed AFTER refactoring

---

## Rule

Refactoring without tests is rewriting. 
A rename that breaks the build is not a refactor — it's a bug.
Change structure. Never change behavior.
