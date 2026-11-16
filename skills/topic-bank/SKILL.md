---
name: topic-bank
description: Builds and maintains a bank of blog or content topics that are checked against everything already published, so a regular publishing schedule never runs dry or repeats itself. Use on "plan content", "give me blog topics", "refill the topic bank", "content calendar", or before an automated publishing run.
---

# Topic bank

## Inputs
- A list of everything already published: titles and URLs, or a sitemap.
- The audience and what the site sells or stands for.
- Optional: Search Console queries, keyword research, customer questions.

## Building topics
1. Start from real demand: questions customers ask, queries already bringing impressions, gaps in what's published.
2. Each topic gets:
   - a working title
   - the one question it answers
   - the search intent (learn, compare, buy, do)
   - the closest existing post, and why this one is different
   - one line on what makes it worth reading over what already ranks
3. Reject a topic if an existing post already answers the same question. Suggest updating that post instead.
4. Mix: practical how-tos, opinion, comparisons and updates. Don't fill the bank with one format.

## Keeping the bank healthy
- Keep `TOPICS.md` in order: next up at the top, used topics moved to a "Published" section with the date and URL.
- When fewer than six topics are left, say so loudly. A schedule that silently runs out is worse than no schedule.
- Every quarter, check published topics for anything now out of date and add a refresh topic.

## If topics feed an automated publisher
- The publisher should stop with a clear error when the bank is empty, never publish a filler post.
- A human should be able to see what went out and when, in a log.

## Hard rules
- No near-duplicates of existing posts, however differently worded.
- Never invent search volumes.
