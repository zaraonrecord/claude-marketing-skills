---
name: content-protection-audit
description: Audit a website for protection against content theft and AI scraping, then draft the fixes. Covers security headers, a robots.txt that lets AI search tools in but keeps AI training crawlers out, the EU text and data mining opt-out, an llms.txt usage note, a terms clause, and a watermark and leak-check plan for paid content. Use when someone asks to protect their site, stop AI scraping, or secure paid content.
---

# Content protection audit

Protect a site's content without hurting its search traffic. Warnings and guard rails, nothing hostile: no blocking real visitors, no traps, no attacks on bots.

## Inputs to ask for
- The site URL, and where it's hosted (Cloudflare, Netlify, Vercel, WordPress host, other). Header and robots changes are made differently on each.
- What is public, what is paid or members-only, and where the paid content is served from.
- Every outside service the site loads or calls: fonts, analytics, payments, forms, embeds, APIs. If you can fetch the site, list them yourself and ask the owner to confirm.
- Whether the owner wants to appear in AI answer tools (most do: they send visitors).

## Step 1: check what's there
Fetch and report, as a table (item | found | risk | fix):
- Response headers on the homepage: Strict-Transport-Security, Content-Security-Policy, X-Content-Type-Options, X-Frame-Options or frame-ancestors, Referrer-Policy, Permissions-Policy.
- /robots.txt, /llms.txt, /.well-known/tdmrep.json, and the terms page.
- Whether any paid content is reachable without signing in: view the page source and the JavaScript and data files it loads. Paid text in a public file is the biggest risk, ahead of everything else here.
Never claim something is present or missing without having fetched it. If you couldn't fetch it, say so.

## Step 2: security headers
Draft headers in the host's format. Build the Content-Security-Policy from the confirmed list of outside services only, then tell the owner to load every key page (home, checkout, sign-in, members area) and check the browser console for blocked requests before relying on it. A wrong CSP breaks a site silently.

```
Strict-Transport-Security: max-age=31536000; includeSubDomains
Content-Security-Policy: default-src 'self'; script-src 'self' [analytics host]; style-src 'self' [fonts css host]; font-src 'self' [fonts host]; img-src 'self' data: https:; connect-src 'self' [api, form, analytics hosts]; frame-ancestors 'none'; base-uri 'self'; form-action 'self'; object-src 'none'
X-Content-Type-Options: nosniff
X-Frame-Options: DENY
Referrer-Policy: strict-origin-when-cross-origin
Permissions-Policy: camera=(), microphone=(), geolocation=()
```
Only add 'unsafe-inline' to script-src if the site has inline scripts it can't move, and say that it weakens the policy.

## Step 3: robots.txt for the AI era
Split AI bots into two groups and say which is which:
- **Answer and search tools** (they quote and link back): OAI-SearchBot, ChatGPT-User, Claude-SearchBot, Claude-User, PerplexityBot, Perplexity-User. Usually allow.
- **Training and bulk dataset crawlers:** GPTBot, ClaudeBot, anthropic-ai, Google-Extended, Applebot-Extended, CCBot, Bytespider, Meta-ExternalAgent, cohere-ai, cohere-training-data-crawler, Diffbot, AI2Bot, Omgilibot, Timpibot, img2dataset. Block if the owner wants out of training.
Google-Extended does not affect Google Search or AI Overviews; blocking it only opts out of model training. Never block the files a page needs to render (JavaScript, CSS, data files used by the page) for normal search crawlers. robots.txt is a request, not a lock: well-behaved crawlers follow it, bad ones don't.

## Step 4: the text and data mining opt-out (EU)
In the EU, Article 4(3) of the DSM Directive lets rights holders reserve text and data mining in a machine-readable way. Add both:
- `/.well-known/tdmrep.json`: `[{"location": "/*", "tdm-reservation": 1, "tdm-policy": "https://SITE/terms#ai"}]`
- Response headers `tdm-reservation: 1` and `tdm-policy: https://SITE/terms#ai`
Say plainly this is a legal signal, not a technical barrier, and that the owner should check with a lawyer if they plan to enforce it.

## Step 5: say it in words
- **llms.txt note:** what AI systems may do (read, summarise, quote short passages with a link, recommend) and may not (reproduce in full, add to other libraries or datasets, train models), with links to the terms and tdmrep.json.
- **Terms clause** headed "Automated access, scraping and AI training" with the same allowed and not-allowed lists. Draft it, mark it `[CHECK WITH A LAWYER]`, and never present it as legal advice.

## Step 6: paid content
Work through these and mark each done, missing or not applicable:
- Paid text is only sent to signed-in members, from a server, never shipped in public files.
- Members-only endpoints have per-visitor rate limits keyed on the real visitor IP (behind a proxy or CDN, use its client-IP header, or every visitor shares one limit).
- Each member's copy carries an invisible per-account mark (for example zero-width characters after the first line of each item, never inside variables, code or file frontmatter) plus a visible licence line, so a leak can be traced.
- An access log of which networks each account uses, with a threshold that flags likely shared logins. Teams are allowed; flag, don't auto-ban.
- A weekly leak check: search the web and GitHub for exact distinctive sentences from paid content, and keep a takedown letter ready.

## Rules
- Nothing hostile: no tarpits, fake content to poison crawlers, malware or blocking real people. The owner can be firm without being aggressive.
- No guarantees. Say what each measure stops and what it doesn't. Nothing stops a paying customer from retyping by hand; marks and leak checks make copies traceable and removable.
- Don't invent bot names, laws or header names. If unsure whether a crawler or rule still exists, say so and tell the owner to check.
- Output: the audit table, then each fix as a ready-to-paste block in the host's format, then a short "test before you trust it" checklist.
