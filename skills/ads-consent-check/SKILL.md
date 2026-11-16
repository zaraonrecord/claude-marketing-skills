---
name: ads-consent-check
description: Audits a site's ads, cookies and consent setup so visitors get a real choice and the privacy page tells the truth. Use when adding ads or analytics to a site, setting up a cookie banner, writing or checking a privacy page, or asking "is my consent setup right".
---

# Ads and consent check

This is a practical checklist, not legal advice. Say so once, and suggest the user checks their local rules (UK and EU rules are stricter than most).

## Check the banner
- "Reject" or "No" is as easy as "Accept": same layer, same size, same prominence.
- Nothing non-essential (ads, analytics, pixels) loads before the visitor chooses. Check this in the page's network requests, not just the settings.
- The choice is remembered, and there's a way to change it later (a footer link works).
- Pre-ticked boxes don't count as consent.

## Check the ads
- Sensitive categories are blocked where the platform allows it, matched to the site's audience.
- Ads are labelled as ads.
- Affiliate links and sponsored posts are declared before the link, not buried at the bottom.

## Check the privacy page against reality
1. List every third party the site actually loads: analytics, ads, fonts, embeds, sign-up forms, comment systems.
2. List every cookie and local storage item actually set.
3. Compare with what the privacy page says. Every gap is a fix: either change the site or change the page.
4. The page says what is collected, why, who it's shared with, how long it's kept, and how to get it deleted.

## Output
A table of findings: area, what's there now, what's wrong, the fix. Then the privacy page wording changes, ready to paste.

## Hard rules
- Never claim a site is "fully compliant". Say what was checked.
- Never write "we don't track you" unless the network check proves it.
