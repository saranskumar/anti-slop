# Debugging Example: Async Race Condition

## Scenario
User reports: "Sometimes the cart shows the wrong total. It doesn't always happen."

## Step 1: Read the Report
"Sometimes" and "doesn't always happen" = timing-dependent. Look for:
- Concurrent state updates
- Promises that resolve out of order
- Missing await

## Step 2: Reproduce
After testing: happens when user clicks "Add to Cart" twice in quick succession.

## Step 3: Find the Code
```typescript
// Original code
async function addToCart(productId: string) {
  const cart = await db.carts.get(userId);         // fetch 1
  cart.items.push(productId);
  await db.carts.save(cart);                       // save 1
}
```

## Step 4: Identify the Root Cause
Two clicks → two concurrent `addToCart` calls:
```
Call 1: fetch cart (items: [A])
Call 2: fetch cart (items: [A])     ← same stale state!
Call 1: push B → save ([A, B])
Call 2: push C → save ([A, C])      ← overwrites B! Bug.
```

This is a **read-modify-write race condition**.

## Step 5: Fix the Root Cause
```typescript
// Fix: atomic update, no read-modify-write
async function addToCart(productId: string) {
  await db.carts.atomicPush(userId, productId);   // DB-level atomic operation
}

// Or: optimistic locking
async function addToCart(productId: string) {
  await db.carts.update({
    where: { userId },
    data: { items: { push: productId } }    // Prisma atomic push
  });
}
```

## Step 6: Verify
- Reproduced bug before fix: ✅ cart loses items on double-click
- Bug absent after fix: ✅ both items appear correctly
- Tests added: ✅ concurrent add test in cart.test.ts
