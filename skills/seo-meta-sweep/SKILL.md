---
name: seo-meta-sweep
description: Rewrites SEO titles and meta descriptions across a site in batches, in the site's own voice, prioritised by pages that already get search impressions. Use on "fix my titles", "meta descriptions", "SEO sweep", "improve how my posts look in Google", or "bulk SEO update".
---

# SEO title and meta sweep

## Prioritise
1. If the user has Search Console data, start with pages that have impressions but a low click-through rate. They're already being seen, the snippet just isn't earning the click.
2. Then pages with empty or broken metadata.
3. Skip pages that will never pull search traffic (old sponsored posts, thin announcements). List them as skipped.

## Titles
- Around 60 characters. Count them.
- Main topic early and natural.
- A year only if the content is genuinely time-sensitive and will be kept up to date.
- No clickbait, no ALL CAPS, no keyword lists.

## Meta descriptions
- Up to 155 characters. Count them.
- Says what the reader actually gets: a key detail, a time, a verdict, a number from the page.
- Written in the site's voice. If there's a voice guide, read it first.
- No filler like "In this post we will". No claims the page doesn't back up.

## Fix on sight
- Template variables showing up as text (like `%sitename%`)
- Duplicate titles or descriptions across pages
- Spelling mistakes
- Two SEO plugins' fields fighting. Work out which one the site actually uses and only edit that one.

## Working
- Batches of 20 to 50. Show a table: URL, old title, new title, old description, new description, character counts.
- Write nothing until the user approves the batch. If cms-guardrails is installed, follow it.
- Changes take a few days to weeks to show in search. Don't promise a timeline.
