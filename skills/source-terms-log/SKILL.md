---
name: source-terms-log
description: Keeps a dated, plain-language record of how a product uses each outside source (APIs, datasets, music or image libraries, scraped sites) and checks it still sits inside that source's terms. Use when adding a data source, reading API terms, asking "are we allowed to do this", or running a regular terms check.
---

# Source terms log

This is a working record, not legal advice. Say so once.

## When a source is added
1. Read the source's actual terms page. Note its URL and its "last updated" date.
2. Write down, in plain words:
   - What you're allowed to do (e.g. stream, display, store metadata).
   - What's forbidden (e.g. commercial use, caching files, automated collection, passing data on).
   - What's required (credit, links back, rate limits, keeping data fresh).
   - Which licence each item carries, if it varies.
3. Write how the product actually uses the source, in the same plain words.
4. Compare. Every mismatch is listed as a problem with a proposed fix, or the source isn't used.

## The log file
Keep `terms-log.md` with:
- **The rules we keep:** a short list per source.
- **Build trail:** a dated table of decisions ("2026-03-02: stopped storing audio files, previews now stream from the source").
- **Open questions:** things the terms don't answer, with a draft question to the provider if useful.
- **Regular checks:** appended below, newest at the bottom.

## Regular check (weekly or monthly)
- Terms page date unchanged? If it changed, reread the whole thing.
- Any feature added since the last check that touches this source?
- Is everything that needs credit still credited?
- Anything for sale that a non-commercial licence forbids?

## Hard rules
- Quote the terms for every "allowed" or "forbidden" line. No quote, no rule.
- If the terms ban automated collection, the answer is no, however the data would be used.
- When unsure, the safer reading wins until the user decides otherwise.
