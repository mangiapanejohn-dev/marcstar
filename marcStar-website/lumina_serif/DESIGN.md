---
name: Lumina Serif
colors:
  surface: '#F1F0EE'
  surface-dim: '#dadad8'
  surface-bright: '#faf9f7'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#f4f3f1'
  surface-container: '#efeeec'
  surface-container-high: '#e9e8e6'
  surface-container-highest: '#e3e2e0'
  on-surface: '#1a1c1b'
  on-surface-variant: '#464741'
  inverse-surface: '#2f3130'
  inverse-on-surface: '#f1f1ef'
  outline: '#777771'
  outline-variant: '#c7c7bf'
  surface-tint: '#5f5e5c'
  primary: '#020302'
  on-primary: '#ffffff'
  primary-container: '#1d1d1b'
  on-primary-container: '#868582'
  inverse-primary: '#c8c6c3'
  secondary: '#635979'
  on-secondary: '#ffffff'
  secondary-container: '#e4d7fd'
  on-secondary-container: '#665c7c'
  tertiary: '#735c00'
  on-tertiary: '#ffffff'
  tertiary-container: '#cba72f'
  on-tertiary-container: '#4e3d00'
  error: '#ba1a1a'
  on-error: '#ffffff'
  error-container: '#ffdad6'
  on-error-container: '#93000a'
  primary-fixed: '#e5e2de'
  primary-fixed-dim: '#c8c6c3'
  on-primary-fixed: '#1c1c1a'
  on-primary-fixed-variant: '#474744'
  secondary-fixed: '#eaddff'
  secondary-fixed-dim: '#cdc1e5'
  on-secondary-fixed: '#1f1732'
  on-secondary-fixed-variant: '#4b4260'
  tertiary-fixed: '#ffe088'
  tertiary-fixed-dim: '#e9c349'
  on-tertiary-fixed: '#241a00'
  on-tertiary-fixed-variant: '#574500'
  background: '#faf9f7'
  on-background: '#1a1c1b'
  surface-variant: '#e3e2e0'
  canvas: '#F9F8F6'
  carbon: '#1D1D1B'
  lavender-subtle: '#EBE4F5'
  gold-muted: '#E5D1A0'
typography:
  headline-xl:
    fontFamily: Newsreader
    fontSize: 48px
    fontWeight: '500'
    lineHeight: '1.1'
    letterSpacing: -0.02em
  headline-lg:
    fontFamily: Newsreader
    fontSize: 32px
    fontWeight: '500'
    lineHeight: '1.2'
  headline-lg-mobile:
    fontFamily: Newsreader
    fontSize: 28px
    fontWeight: '500'
    lineHeight: '1.2'
  headline-md:
    fontFamily: Newsreader
    fontSize: 24px
    fontWeight: '500'
    lineHeight: '1.3'
  body-lg:
    fontFamily: Inter
    fontSize: 18px
    fontWeight: '400'
    lineHeight: '1.6'
  body-md:
    fontFamily: Inter
    fontSize: 16px
    fontWeight: '400'
    lineHeight: '1.5'
  body-sm:
    fontFamily: Inter
    fontSize: 14px
    fontWeight: '400'
    lineHeight: '1.4'
  label-md:
    fontFamily: Inter
    fontSize: 14px
    fontWeight: '600'
    lineHeight: '1'
    letterSpacing: 0.02em
  label-sm:
    fontFamily: Inter
    fontSize: 12px
    fontWeight: '500'
    lineHeight: '1'
rounded:
  sm: 0.25rem
  DEFAULT: 0.5rem
  md: 0.75rem
  lg: 1rem
  xl: 1.5rem
  full: 9999px
spacing:
  unit: 4px
  container-max: 1200px
  margin-desktop: 48px
  margin-mobile: 20px
  gutter: 24px
  stack-sm: 8px
  stack-md: 16px
  stack-lg: 32px
  section-gap: 80px
---

## Brand & Style

This design system is built upon a foundation of intellectual clarity and editorial elegance. It prioritizes the reading experience and focused interaction, drawing deep inspiration from modern AI interfaces that favor utility over decoration. The aesthetic is **Minimalist and Sophisticated**, utilizing high-quality typography and a restrained color palette to create an environment that feels both academic and cutting-edge.

The target audience consists of professionals, researchers, and creators who value a distraction-free workspace. The UI should evoke a sense of calm authority—like a well-organized physical library transitioned into a digital space. 

Key principles include:
- **Clarity of Thought:** Removing unnecessary visual noise.
- **Editorial Polish:** Using serif scales to create a literary hierarchy.
- **Warm Utility:** Softening the clinical nature of software with organic, warm neutrals.

## Colors

The palette is anchored by "Carbon" text on a "Canvas" off-white background. This low-strain contrast ratio is intentional, mimicking the readability of premium paper. 

- **Primary:** Used exclusively for high-contrast text and essential actionable icons.
- **Canvas & Surface:** `#F9F8F6` acts as the base layer, while `#F1F0EE` provides subtle containment for sidebars, cards, or secondary areas.
- **Accents:** Soft Lavender and Muted Gold are used sparingly for "magic" moments, status indicators, or subtle highlights. They should never overwhelm the neutral composition.
- **Interaction:** State changes (hover/active) should be represented by slight shifts in neutral saturation rather than aggressive color changes.

## Typography

Typography is the primary vehicle for the brand’s personality. We use **Newsreader** for all expressive and structural headings to provide a literary, authoritative feel. For functional text and high-density data, **Inter** provides a neutral, highly legible contrast.

**Hierarchy Rules:**
- **Serif for Narrative:** Use Newsreader for page titles, article headers, and quotes.
- **Sans for Action:** Use Inter for buttons, navigation, input fields, and UI labels.
- **Line Height:** Maintain a generous line height for body text (1.5 - 1.6) to ensure maximum focus and reading comfort.

## Layout & Spacing

This design system utilizes a **Fluid-Fixed Hybrid** model. Content is centered within a 1200px container on desktop, but margins are generous to ensure the interface never feels crowded.

**Spacing Philosophy:**
- **White Space as a Feature:** Use wide gaps (`section-gap`) to separate major conceptual blocks. 
- **The 4px Grid:** All internal component padding and margins should be multiples of 4px.
- **Mobile Reflow:** On mobile devices, margins shrink to 20px, and vertical stacking becomes the primary layout mode. Cards should generally span the full width of the screen minus the margins.
- **Information Density:** Keep density low. There should always be clear "air" around interactive elements.

## Elevation & Depth

To maintain a clean, professional look, we avoid heavy shadows. Instead, we use **Tonal Layers and Subtle Outlines**.

- **Layers:** Use the `surface` color (#F1F0EE) to denote secondary panels or background areas behind the main `canvas` white.
- **Depth:** When an element needs to float (like a dropdown or modal), use a very soft, diffused shadow: `0px 4px 20px rgba(29, 29, 27, 0.04)`.
- **Borders:** Use 1px solid borders in a slightly darker neutral (`#E5E4E2`) rather than shadows for buttons and cards. This reinforces the structured, intellectual feel of the UI.

## Shapes

The shape language is defined by **Soft Roundedness**. We avoid both sharp industrial corners and overly bubbly circles.

- **Primary Radius:** 0.5rem (8px) for standard components like small buttons or input fields.
- **Large Radius:** 1rem (16px) for major UI elements like cards, containers, and modals.
- **Consistency:** All interactive elements must share the same corner radius logic to maintain a cohesive, "friendly-yet-pro" appearance.

## Components

**Buttons:**
- **Primary:** Solid Carbon background with Canvas text. Rounded-lg (12px-16px).
- **Secondary:** Transparent background with a 1px border of Carbon.
- **Ghost:** No background or border; uses Carbon text with a subtle background tint on hover.

**Cards:**
- White background with a 1px border in a soft neutral tone. Rounded-xl (16px). Avoid shadows unless the card is interactive or draggable.

**Input Fields:**
- Clean, minimalist borders. Label text should be Inter (Label-sm) placed above the field. Focused states should use a subtle highlight color (Lavender) for the border or a slightly thicker 2px border.

**Chips & Tags:**
- Used for categorization. Soft lavender backgrounds with deep lavender text. Highly rounded (pill-shaped).

**Lists:**
- Generous vertical padding between items. Use subtle dividers only when necessary for extreme data density. Use Newsreader for list item headers and Inter for descriptions.

**Navigation:**
- Clean, horizontal top bars or minimal sidebars. High emphasis on active states using a small underline or a font-weight shift.