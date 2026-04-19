---
name: uiux-designer
description: "Use this skill when designing UI components, choosing color palettes, implementing responsive layouts, or reviewing code for UX issues. For landing pages, dashboards, e-commerce, SaaS, and mobile apps. Provides 50+ design styles, 97 color palettes, 57 font pairings, and stack-specific guidelines for React, Vue, Next.js, Flutter, SwiftUI, and more."
---

# UIUX Designer — Design Intelligence

Comprehensive design guide for web and mobile applications. Contains 50+ styles, 97 color palettes, 57 font pairings, 99 UX guidelines, and 25 chart types across 12 technology stacks. Searchable database with priority-based recommendations.

---

## When to Activate This Skill

- Designing new UI components, pages, or full layouts
- Choosing color palettes, typography, and spacing systems
- Reviewing existing UI code for UX regressions
- Building landing pages, dashboards, SaaS interfaces, or e-commerce flows
- Implementing accessibility requirements (WCAG 2.2 AA minimum)
- Selecting design style and visual language for a new product

---

## Workflow — Follow This Every Time

### Step 1: Analyze Requirements
Extract these before generating anything:
- **Product type**: SaaS, e-commerce, portfolio, dashboard, landing page, mobile app
- **Style keywords**: minimal, playful, professional, elegant, dark mode, glassmorphism, brutalist
- **Industry**: healthcare, fintech, gaming, education, productivity, developer tools
- **Stack**: React, Vue, Next.js, Flutter, SwiftUI — default to `html-tailwind` if unspecified
- **Audience**: consumer vs enterprise, technical vs non-technical

### Step 2: Generate Design System (Always Required First)
```bash
python3 .agent/skills/uiux-designer/scripts/search.py "<keywords>" --design-system -p "Project Name"
```

### Step 3: Supplement With Targeted Searches
```bash
python3 .agent/skills/uiux-designer/scripts/search.py "<keyword>" --domain <domain>
```

### Step 4: Apply Stack-Specific Guidelines
```bash
python3 .agent/skills/uiux-designer/scripts/search.py "<keyword>" --stack html-tailwind
```

---

## Design Principles — Non-Negotiable

### Hierarchy First
Every screen has one primary action. If everything is emphasized, nothing is. Establish visual weight before touching color.

### Consistency Over Creativity
Use design tokens for all colors, spacing, and typography. Never hardcode a hex value outside the token system. Inconsistency signals an unfinished product.

### Accessibility Is a Feature
- Minimum contrast ratio: 4.5:1 for body text, 3:1 for large text (WCAG AA)
- All interactive elements must have visible focus states
- Never rely on color alone to convey meaning
- Touch targets: minimum 44×44px on mobile

### Responsive Is Mandatory
- Mobile-first breakpoints: 320px → 768px → 1024px → 1440px
- No horizontal scroll on any viewport
- Typography scales with viewport — never fixed sizes on body text

### Motion With Purpose
- Micro-animations: 150–300ms, ease-out
- Page transitions: 200–400ms
- Never animate just because you can — every animation must reduce cognitive load or signal state

---

## Color System

### Palette Selection Rules
- Use a 60/30/10 ratio: dominant / secondary / accent
- Dark mode must be designed from the start — never retrofitted
- Semantic colors are mandatory: `success`, `warning`, `error`, `info`
- Surface hierarchy: background → surface → elevated surface → overlay

### Common Palette Archetypes
| Style | Primary | Background | Accent |
|-------|---------|------------|--------|
| SaaS Professional | Indigo 600 | Slate 50 | Violet 500 |
| Dark Dashboard | Blue 500 | Gray 950 | Cyan 400 |
| Fintech Trust | Blue 700 | White | Green 500 |
| Consumer Playful | Purple 500 | White | Pink 400 |
| Developer Tool | Zinc 900 | Zinc 950 | Green 400 |

---

## Typography System

### Scale (always use a scale — never arbitrary sizes)
```
xs:   12px / 0.75rem
sm:   14px / 0.875rem
base: 16px / 1rem
lg:   18px / 1.125rem
xl:   20px / 1.25rem
2xl:  24px / 1.5rem
3xl:  30px / 1.875rem
4xl:  36px / 2.25rem
5xl:  48px / 3rem
```

### Font Pairing Recommendations
| Use Case | Heading | Body |
|----------|---------|------|
| SaaS / Product | Inter | Inter |
| Editorial | Playfair Display | Source Serif 4 |
| Developer Tool | JetBrains Mono | Inter |
| Marketing | Cal Sans | Inter |
| Mobile App | SF Pro (iOS) / Roboto (Android) | System |

### Rules
- Line height: 1.5 minimum for body, 1.2 for headings
- Letter spacing: -0.02em for large headings, 0 for body
- Max line length: 65–75 characters for readability

---

## Spacing System

Use an 8px base grid. Every spacing value must be a multiple of 4px.

```
0.5: 2px   (hairline)
1:   4px   (tight)
2:   8px   (compact)
3:   12px
4:   16px  (default)
5:   20px
6:   24px  (comfortable)
8:   32px  (section)
10:  40px
12:  48px  (generous)
16:  64px  (hero)
24:  96px  (page section)
```

---

## Component Patterns

### Cards
- Consistent padding: 24px default, 16px compact
- Border radius: 8px (subtle), 12px (modern), 16px (rounded)
- Shadow: use elevation system, never arbitrary box-shadow values

### Forms
- Label always above input — never placeholder-only
- Error state: red border + error message below field (never just color)
- Success state: green checkmark or border
- Disabled state: 40% opacity, cursor not-allowed
- Min touch target: 44px height on all inputs

### Navigation
- Max 7 items in primary nav (Miller's Law)
- Active state must be unmistakable — not just color
- Mobile: bottom navigation for apps, hamburger only as last resort

### Tables / Data Grids
- Alternating row backgrounds only if data is dense (>10 columns)
- Sort indicators must be always visible, not on hover only
- Sticky header mandatory for tables > 10 rows

### Empty States
- Never show a blank screen — always show context + action
- Illustration + headline + CTA button minimum

---

## UX Anti-Patterns — Never Ship These

- **Disabled buttons with no explanation** — always tell the user why
- **Modal on page load** — interrupts before user has context
- **Infinite scroll without position memory** — breaks back button
- **Form validation only on submit** — validate on blur
- **Link that looks like a button** — pick one, be consistent
- **Icon-only actions without tooltip** — not everyone knows your icons
- **Color as the only error indicator** — fails accessibility

---

## Output Checklist

Before delivering any UI work:

- [ ] Color tokens defined — no hardcoded hex values
- [ ] Typography uses the scale — no arbitrary sizes
- [ ] Spacing on the 8px grid
- [ ] Contrast ratios pass WCAG AA (4.5:1 text, 3:1 large)
- [ ] Focus states visible on all interactive elements
- [ ] Mobile viewport tested (320px minimum)
- [ ] Dark mode handled or explicitly deferred
- [ ] Empty, loading, and error states designed — not just the happy path
- [ ] Animations have purpose and are under 400ms

---

## Rule

Design is not decoration. It is the product.
If a user cannot complete their goal without thinking about the UI, the design has failed.
Ship nothing you would not be proud to show in a portfolio.
