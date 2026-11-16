---
name: site-migration-checklist
description: Plans and checks a move of a blog, newsletter or site off a hosted platform onto one you own, without losing posts, images, subscribers, links or search rankings. Use when the user says "migrate", "move off", "leave [platform]", "export my posts", "switch hosting", or "rebuild the site somewhere else".
---

# Site migration checklist

Work through the phases in order. Don't start the next phase until the current one checks out. Nothing goes live and no DNS changes until the user says so.

## 1. Inventory (before touching anything)
- Every URL: posts, pages, tags, authors, archives, feeds. Use the platform's sitemap and export, and compare the two counts.
- Every image and file, and where it is hosted. Hosted-platform image links usually die when you leave.
- Subscribers: how they export, and whether consent records come with them.
- What the platform did for you that you'll need to replace: RSS, search, comments, sign-up forms, ads, analytics, email sending.
- Current search performance per URL, if the user has Search Console. Note the top 20 pages.

## 2. Build
- Import content and keep the original publish dates and authors.
- Rehost every image on the new site and rewrite the links. Count before and after.
- Keep the same URLs wherever possible. Where not, list old to new.

## 3. Check before switching
- Every old URL returns the post or a 301 to it. No chains, no 404s. Test the full list, not a sample.
- Sitemap, RSS feed and robots.txt exist and point at the new site.
- Canonical tags point at the new URLs.
- No image still loads from the old platform.
- Forms work end to end and new sign-ups land in the right place.

## 4. Switch (only with the user's go-ahead)
- DNS change, then re-run the phase 3 checks on the live domain.
- Leave email (MX) records alone unless the user asks. Moving a website should never break email.
- Submit the new sitemap in Search Console.

## 5. After
- Watch for 404s and crawl errors for two weeks.
- Keep the old platform's export somewhere safe.

## Hard rules
- Never delete anything on the old platform until the user confirms the new site is right.
- Report counts, not "looks good": posts, images, redirects and subscribers before and after.
