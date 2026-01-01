# Color Palette Variations

Choose one of the three classic palettes below by updating the color variables in `assets/scss/_variables.scss`.

---

## Option 1: Warm Burgundy (Current - Recommended)
**Theme:** Classic elegance with warmth and sophistication

```scss
$primary-color: #0b2545;           // deep navy
$accent-color: #7b3f3f;             // warm burgundy
$muted-color: #6b6b6b;              // muted gray
$background-color: #FAF7F2;         // warm cream
$surface-color: #ffffff;            // white
$text-color: #222222;               // dark charcoal
$link-color: $primary-color;        // deep navy
$border-color: #e6e2d9;             // soft warm border
```

**Use case:** Professional, warm, inviting. Good for portfolio or academic content.

---

## Option 2: Cool Teal
**Theme:** Modern sophistication with cool refinement

```scss
$primary-color: #1a4d5c;            // deep teal
$accent-color: #2d7a8f;             // muted teal-blue
$muted-color: #6b7280;              // cool gray
$background-color: #f8f9fa;         // cool ivory
$surface-color: #ffffff;            // white
$text-color: #1f2937;               // cool charcoal
$link-color: $primary-color;        // deep teal
$border-color: #e5e7eb;             // cool gray border
```

**Use case:** Modern, clean, professional. Works well for tech/research content.

---

## Option 3: Earthy Olive & Rust
**Theme:** Natural, warm, and grounded

```scss
$primary-color: #3d5641;            // deep olive green
$accent-color: #8b6f47;             // warm rust/tan
$muted-color: #6b6b6b;              // neutral gray
$background-color: #faf6f1;         // warm beige
$surface-color: #ffffff;            // white
$text-color: #2d2d2d;               // deep charcoal
$link-color: $primary-color;        // deep olive
$border-color: #e8dfd5;             // warm sand border
```

**Use case:** Organic, approachable, creative. Good for artist/designer portfolios.

---

## How to Switch Palettes

Edit `/assets/scss/_variables.scss` and replace the color section (lines 16-26) with your chosen palette above. Then rebuild:

```bash
bundle exec jekyll serve
```

The changes will apply instantly to all components (headings, links, buttons, borders, shadows).

---

## Customization Tips

- **Darken accent on hover:** Use `darken($accent-color, 8%)` in interactive states
- **Subtle backgrounds:** Use `rgba($accent-color, 0.08)` for soft hover backgrounds
- **Links:** Keep `$link-color: $primary-color` for consistency, or set to `$accent-color` for more emphasis
- **Headings:** Change from `color: $primary-color` to `color: $accent-color` in `_typography.scss` for more dramatic effect

---

## Visual Preview (Text Representation)

**Option 1 - Warm Burgundy**
- Text: Dark charcoal (#222222)
- Headings: Deep navy (#0b2545)
- Links: Deep navy (#0b2545), accent on hover
- Buttons: Warm burgundy (#7b3f3f)
- Background: Warm cream (#FAF7F2)
- Borders: Soft warm (#e6e2d9)

**Option 2 - Cool Teal**
- Text: Cool charcoal (#1f2937)
- Headings: Deep teal (#1a4d5c)
- Links: Deep teal (#1a4d5c)
- Buttons: Muted teal (#2d7a8f)
- Background: Cool ivory (#f8f9fa)
- Borders: Cool gray (#e5e7eb)

**Option 3 - Earthy Olive & Rust**
- Text: Deep charcoal (#2d2d2d)
- Headings: Deep olive (#3d5641)
- Links: Deep olive (#3d5641)
- Buttons: Warm rust (#8b6f47)
- Background: Warm beige (#faf6f1)
- Borders: Warm sand (#e8dfd5)
