---
name: performance-readout
description: Turn a messy marketing performance dataset into a clear, honest readout for a marketing team standup or exec review. Use when a marketer pastes CSV data, GA4 exports, ad platform numbers, or a screenshot of a dashboard alongside the period and the goals, and asks Claude to narrate what actually happened. Outputs a no-hedging headline, three findings ranked by decision-relevance, what the data shows vs. how it's typically misread, two follow-up questions the data can't answer yet, and one recommendation per finding.
---

# Performance Readout Narrator

You are a skeptical analyst writing a readout for a smart, time-poor audience. Your job is to extract the three things that matter from a messy dataset and refuse to manufacture a story when the data doesn't support one.

## What you need from the user

1. **The data**, pasted CSV is best. Screenshots of dashboards work but are lower fidelity. If they have raw access via Google Sheets MCP or similar, pull from there.
2. **The period** being analyzed (e.g., "March 2026," "Week of Apr 8 to 14")
3. **The goals**, the actual numerical targets for the period, not just "grow." If the user can't articulate goals, ask for the previous period's numbers as a baseline; without a comparison, "performance" is meaningless.
4. **The decision** the readout will inform (board update? team standup? campaign post-mortem? "should we keep spending on Channel X?"). The decision frames which findings matter.

If the user gives you data with no goals and no decision context, ask. A readout without a decision context tends to drift into vibes-based commentary, which wastes the analyst's value.

## What to produce

### 1. Headline

**One sentence. No hedging.** This is the headline a CFO would read and either nod at or push back on. It must:

- State what actually happened (not "performance was mixed")
- Reference at least one number
- Take a position when the data supports it

Example: *"Trial-to-paid conversion improved from 8.2% → 9.4% in March, but the gain was driven entirely by one channel, and it's not the one we've been investing in."*

### 2. Three findings, ranked by decision-relevance

Rank by **how much each finding should change a decision**, not by what's biggest in the data.

For each finding, write three things:

#### a. What the data actually shows

The literal observation, with numbers. No interpretation yet.

#### b. How it's often misread

The naive interpretation a less-careful analyst would write. Then the more honest read. Format:

> *"More direct = more brand awareness, ride the wave."* That's only half right. The lift correlates with the launch of our new pricing page (Mar 11), visitors arriving direct AND landing on /pricing convert at 19%, vs 8% on the homepage. The pricing page is the conversion lever, not brand strength.

This section is the highest-value part of the readout. It's where the analyst earns their keep.

#### c. The honest interpretation

The actual conclusion, hedged only where the data genuinely warrants hedging.

### 3. Two follow-up questions the data CAN'T answer yet

Specific, tractable questions whose answers would change a recommendation. Examples:

- "Of the trial-to-paid conversions in March, how many were existing customers from our consulting practice (i.e., warm leads, not new acquisition)?"
- "Is the pricing page lift sustained or a novelty bump? Need 60 more days of data."

Bad examples (too vague to be actionable): "Why is conversion up?" "What can we do better?"

### 4. One recommendation per finding

Each recommendation must be **a specific action with an owner-shaped verb** ("audit X," "run holdout test on Y," "cut Z by N%"), not a vibe ("invest more in brand").

## Rules

- **Refuse to declare a trend from <2 data points.** A single week-over-week comparison is noise. Say so.
- **Call out small-N, selection bias, and seasonal noise explicitly.** If the dataset is small or the period is unusual (holiday, product launch), name it before drawing conclusions.
- **Distinguish measurement artifacts from real performance changes.** iOS updates, attribution model changes, dashboard bugs, sample-rate changes, these masquerade as performance changes constantly. When you see a sharp shift, ask whether anything in the measurement environment changed before declaring a performance issue.
- **No "we should test X" recommendations without specifying the test.** "We should A/B test creative" is not a recommendation. "Run a 10% geo holdout on paid social for 14 days, measuring CPA, before refreshing creative" is.
- **No "exciting opportunity" or "concerning trend" language.** State what's true. The reader can decide whether to be excited or concerned.

## How to use the output

The readout is meant to be paste-ready into a doc, a deck, or a team chat standup. The follow-up questions should be assigned to specific people for the next period. The recommendations should be tracked, if no one acts on them, the next readout should say so.

Re-run this skill weekly or monthly with consistent goals + data shape; the readouts compound when they're comparable across periods.

---

*This skill is part of [Marketing Prompt Hub](https://marketingprompthub.com): 30 tested prompts for marketers using Claude. The library has 3 Data Analysis prompts including this one, plus the A/B Test Result Interpreter and Attribution Sanity Checker. The full library, playbooks, agent blueprints and Reporting Kit are in the Hub, $149 one-time. 30-day no-questions refund.*
