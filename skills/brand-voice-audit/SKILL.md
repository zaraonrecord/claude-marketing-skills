---
name: brand-voice-audit
description: Checks a draft against an existing brand voice guide, rule by rule, with evidence, and rewrites only when asked. Use when the user asks "does this sound like us", "check this against our voice", "make this on-brand", or pastes a draft alongside a voice guide. Pair with voice-tone-extractor, which builds the guide this Skill enforces.
---

# Brand voice audit

## What you need
- A voice guide. If the user has a `voice-guide.md` in this folder or in the conversation, read it fully first. If there is none, stop and ask for one, or suggest running the voice-tone-extractor Skill. Never audit against a voice you imagined.
- The draft to check.

## How to audit
1. Turn the voice guide into a numbered list of checkable rules. A rule is checkable if you can point at a sentence that breaks it. "Be warm" is not checkable. "No sentence opens with a hedge" is.
2. Go through the draft rule by rule. Output a table: rule, verdict (pass / fail / not applicable), and the exact offending line for every fail.
3. Score nothing out of ten. Counts of fails per rule are enough.
4. List the three fixes that would move the draft furthest, in order.

## If asked to rewrite
- Change only what failed. Keep every fact, claim, number and link exactly as it was.
- Show the rewrite, then a short list of what changed and which rule each change fixes.

## Hard rules
- Quote the draft for every fail. No quote, no fail.
- If the guide and the draft disagree about a fact, flag it. Do not "fix" facts to sound better.
- Never add statistics, testimonials or claims that are not in the draft. Write `[MISSING: SOURCE]` if the draft needs one.
- If the guide is too vague to check a dimension, say so and suggest the one example that would make it checkable.
