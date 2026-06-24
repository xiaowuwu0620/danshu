---
name: danshu
description: Create restrained Chinese A4 PDF reports, one-pagers, briefs, and class/fieldwork handouts in the "丹书" style: warm parchment paper, Chinese vermilion #A33A2A as the only focus color, serif hierarchy, curved diagrams, data visualization, negative space, and polished PNG exports. Use when the user asks for 朱砂红/Kami/中国风/高级克制/曲线美感/负面空间/A4纵向/PDF/报告/调研/方案/讲义/作业说明/中文小报告.
---

# 丹书

丹书 is a Chinese editorial document style built on Kami's restraint: warm paper, one vermilion focus color, serif-led hierarchy, quiet curves, and enough negative space for judgment to breathe.

## Output Contract

Produce, unless the user narrows the scope:

- A4 portrait PDF as the formal deliverable.
- HTML source beside the PDF.
- One PNG per page when the user mentions sharing, screenshots, WeChat, preview, or image output.
- A contact-sheet preview only as QA support, not as the main image deliverable.

Use Chinese by default when the source is Chinese. Keep English only for compact labels such as `FIELD BRIEF · 01` when they add editorial rhythm.

## Visual Tokens

- Paper: `#f5f4ed`
- Card ivory: `#faf9f5`
- Vermilion focus: `#A33A2A`
- Soft vermilion curve: `#DDBBB2`
- Primary text: `#141413`
- Body text: `#3d3d3a`
- Subtext: `#504e49`
- Metadata: `#6b6a64`
- Border: `#e8e6dc`
- Soft grid: `#e5e3d8`

Never use the old Kami ink-blue token in 丹书 output. Vermilion should remain under roughly 5% of the page surface.

## Typography

- Chinese: `TsangerJinKai02` first, then Source Han Serif / Songti fallbacks.
- English fallback: Charter or Georgia.
- Use one serif family per page.
- H1: 26-30pt, line-height 1.08-1.16.
- Section title: 13-15pt, with a thin vermilion left bar or top divider.
- Body: 9.5-10.5pt, line-height 1.42-1.55.
- Tiny metadata: 6.4-7.5pt.
- Avoid synthetic bold, italics, pure white, cool grays, gradients, and heavy shadows.

## Workflow

1. Extract the source faithfully.
   - For PDF input, use `pypdf` text extraction and verify page count.
   - For `.pages`, first try conversion; if unavailable, use the embedded preview only as a fallback and state the limitation.
   - Do not invent statistics. If a number is absent, write a qualitative claim or mark the gap.

2. Distill before layout.
   - Pull out thesis, audience, time window, stakeholders, requirements, scoring, risks, and any quantifiable numbers.
   - Rewrite bureaucratic phrasing into concrete judgment.
   - Remove filler such as “高质量发展”, “赋能”, “全方位”, unless quoted as an anti-example.

3. Choose page count.
   - One-pager: one sharp thesis, 3-5 metrics, one diagram, one conclusion.
   - 3-page brief: page 1 thesis + key metrics; page 2 structure/topic map; page 3 decision/scoring/next action.
   - Longer reports: use chapters only when each page can reach 60-80% useful density.

4. Visualize only where the diagram teaches faster than prose.
   - Assign a semantic role before drawing any curve: time, route, flow, comparison, grouping, attention, or boundary.
   - Do not reuse the same curve silhouette across adjacent pages. Vary direction, amplitude, openness, and anchoring only when the meaning changes.
   - Time ranges: mostly horizontal, low-amplitude curve or stepped timeline.
   - Options or topics: card map with separate local arcs, bracket curves, or enclosure paths; avoid one repeated wave behind every card.
   - Process: S-curve or stepped path with numbered anchors. Keep each number physically paired with its text.
   - Comparison: use split baselines, opposing arcs, or bar structure; do not use a decorative flow curve.
   - Spatial fieldwork or route tasks: use a route line, map-like path, or checkpoint path instead of a generic S-curve.
   - Scoring or weights: stacked horizontal bar.
   - Category comparison: restrained bar chart.
   - Proportions: donut only when the parts sum to 100 and there are <= 6 parts.

5. Typeset with negative space.
   - Leave one quiet zone per page.
   - Keep cards rectangular with radius <= 8pt.
   - Use curves as structure, not decoration; if removing the curve does not change comprehension, replace it with a divider, grid, bracket, or empty space.
   - Let text overlap a pale curve if needed, but never separate numbered dots from their labels.

6. Verify visually.
   - Render each page to PNG.
   - Inspect full page and zoomed details for: title overlap, curve/text collisions, right-edge overflow, card crowding, footer collisions, and stray old blue.
   - Export page PNGs at 2K-4K long edge when requested.

## Writing Rules

- Prefer “这份作业不是写一篇……” over “这份作业不是让学生写一篇……”.
- Replace abstract nouns with observable behavior.
- Every page should contain at least one sentence of judgment, not just a list of facts.
- For education documents, write for students first and administrators second.
- Keep one final sentence that the reader can remember.

## Useful References

- Read `references/style.md` for layout patterns and chart choices.
- Read the Curve Grammar section in `references/style.md` whenever a document needs more than one diagram or more than one curved element.
- Read `references/checklist.md` before final delivery.
- Use `scripts/export-highres-png.sh` to create 2K-4K page images from split PDFs when local tools permit.
