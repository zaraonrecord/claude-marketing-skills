---
name: indexing-audit
description: Works out why a site's pages aren't showing in Google using its Search Console data, sitemap and live pages, then lists the fixes in order. Use on "why isn't Google indexing my site", "crawled but not indexed", "my pages aren't showing up", "impressions but no clicks", or a Search Console coverage report.
---

# Indexing audit

## What you need
- Search Console exports or screenshots: the performance report (queries and pages) and the page indexing report with its reasons. If the user can't get these, say how much less you can tell without them.
- The sitemap URL and access to fetch live pages.

## Steps
1. **Where impressions come from.** Split them by page. A site where one page has nearly all the impressions, for queries that don't match it, has a relevance problem, not an indexing one.
2. **Indexing reasons.** For each reason in the report, list example URLs and sort them into buckets:
   - Files that shouldn't be indexed (raw downloads, text files, admin pages). Fix: a noindex header or block them.
   - Duplicates (`/page` and `/page.html`, trailing slashes, http/https, www). Fix: one canonical URL everywhere, and redirects.
   - Thin or near-duplicate pages (several posts answering the same question). Fix: merge, or make them clearly different.
   - Real pages Google just hasn't kept yet. Fix: links to them from strong pages, then request indexing.
3. **Check canonicals.** Fetch a sample of live pages. The canonical tag, the sitemap URL, internal links and the URL that actually serves must all match.
4. **Check the sitemap.** Every important page is in it, nothing that should be hidden is, and the last-modified dates are real.
5. **Check internal links.** Pages linked from nowhere are hard for Google to value.

## Output
Findings ordered by how many pages each fix affects, then a short "do first" list. Mark which fixes need code changes and which only need clicks in Search Console.

## Hard rules
- Never promise rankings or a timeline. Google decides, and it can take weeks.
- Don't guess at causes the data doesn't show. Say what's missing.
