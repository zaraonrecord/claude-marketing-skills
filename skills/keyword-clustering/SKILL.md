---
name: keyword-clustering
description: Clusters a pasted keyword list or CSV export by search intent first and topic second, maps each cluster to one page or a hub, and flags overlaps with pages the site already has. Use on "cluster these keywords", "group this export", "organise these keywords", "keyword map", or any pasted keyword list.
---

# Keyword clustering

## Inputs
- The keyword list or export. Use any volume or difficulty columns that are there. Never invent volumes.
- The site's existing URLs and titles, if the user can paste them or a sitemap. Without them, say that gap-checking is off.

## Procedure
1. Clean: lowercase, merge exact duplicates and obvious plurals, keep the original rows.
2. Intent first. Tag each keyword: informational, commercial, transactional or navigational. If you can't tell without seeing the results page, tag it `intent: check SERP`.
3. Then topic. Inside each intent, group keywords that one page could fully answer. A good test: would the same top results rank for both? If unsure, keep them apart and say so.
4. Name each cluster after its clearest keyword, not a made-up label.
5. Map each cluster: one page, a section of an existing page, or a hub with child pages.
6. If existing URLs were supplied, mark each cluster: covered (by which URL), partly covered, or gap. Flag any two existing pages chasing the same cluster as cannibalisation.

## Output
A table: cluster name, intent, keywords, total volume (only if supplied), page type, existing URL or "gap", notes. Then the top five gaps in order of likely payback, with one line each on why.

## Hard rules
- Never invent search volume, difficulty or ranking positions.
- Don't merge clusters with different intents just to make fewer pages.
- If the list is too short to cluster honestly, say so.
