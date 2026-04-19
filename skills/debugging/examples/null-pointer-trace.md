# Debugging Example: Reading a Stack Trace to Root Cause

## Scenario
Error in production:
```
TypeError: Cannot read properties of undefined (reading 'name')
    at UserCard (UserCard.tsx:23:18)
    at renderWithHooks (react-dom.development.js:14985:18)
    at mountIndeterminateComponent (react-dom.development.js:17811:13)
    at ...
```

## Step 1: Read Top-Down — The First Line is the Cause
```
TypeError: Cannot read properties of undefined (reading 'name')
```
Something is `undefined` and we tried to read `.name` from it.

## Step 2: Find Your Code in the Stack
Ignore React internals. Find the first frame in YOUR code:
```
at UserCard (UserCard.tsx:23:18)   ← THIS ONE
```
Line 23, column 18 of `UserCard.tsx`.

## Step 3: Read That Line
```typescript
// UserCard.tsx line 23
<h2>{user.name}</h2>  // ← user is undefined here
```

## Step 4: Trace Backwards — Why is `user` undefined?
```typescript
function UserCard({ userId }: { userId: string }) {
  const { data: user } = useQuery(getUserQuery(userId));
  // On first render, data is undefined while loading!
  return (
    <div>
      <h2>{user.name}</h2>  // ← crashes because user hasn't loaded yet
    </div>
  );
}
```

## Step 5: Root Cause
The component renders before the query resolves. `user` is `undefined` on the first render. The code assumed `user` would always be defined.

## Step 6: Fix
```typescript
// Option A: Guard the undefined case
function UserCard({ userId }: { userId: string }) {
  const { data: user } = useQuery(getUserQuery(userId));
  if (!user) return <UserCardSkeleton />;   // ← handle loading state
  return <div><h2>{user.name}</h2></div>;
}

// Option B (preferred — Suspense): useSuspenseQuery
function UserCard({ userId }: { userId: string }) {
  const { data: user } = useSuspenseQuery(getUserQuery(userId));
  // data is ALWAYS defined here — Suspense handles the loading boundary
  return <div><h2>{user.name}</h2></div>;
}
```

## Lesson
Stack traces always point to the symptom. The root cause is usually one question up:
*"Why did this value end up undefined/null when the code assumed it wouldn't be?"*
