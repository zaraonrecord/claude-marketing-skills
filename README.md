# Claude Skills for marketers

23 free Claude Skills for marketing work: writing, SEO, research, email, ads, reviews and running a site. Each one is something we actually use, written to stop Claude doing the things that make AI marketing output useless: inventing numbers, padding to length, publishing without asking, and sounding like everyone else.

From [Marketing Prompt Hub](https://marketingprompthub.com/). Free under CC BY 4.0.

## Install

**Claude.ai or the desktop app**
1. Download the zip for the Skill you want from [`dist/`](dist/).
2. Make sure code execution is on under Settings, Capabilities.
3. Go to Customize (or Plugins), then Skills, click **+**, choose **Create skill**, then **Upload a skill**, and pick the zip.

**Claude Code**
Copy the Skill's folder into `~/.claude/skills/` (for you) or `.claude/skills/` in a project (for everyone on it):

```bash
git clone https://github.com/zaraonrecord/claude-marketing-skills.git
cp -R claude-marketing-skills/skills/slop-guard ~/.claude/skills/
```

Anthropic's own guides: [using Skills in Claude](https://support.claude.com/en/articles/12512180-use-skills-in-claude) and [Skills in Claude Code](https://code.claude.com/docs/en/skills).

Some Skills come with a fill-in file (a style guide, an offer file, a watchlist). Fill it in before you rely on the Skill. Until you do, the Skill will ask you for what it needs instead of guessing.

## The Skills

### Writing and voice
| Skill | What it does |
|---|---|
| [slop-guard](skills/slop-guard/) | Bans the words and patterns that make copy read like AI, and refuses to ship copy that fails |
| [voice-tone-extractor](skills/voice-tone-extractor/) | Builds a reusable voice and tone guide from your existing writing |
| [brand-voice-audit](skills/brand-voice-audit/) | Checks a draft against your voice guide, rule by rule, with the offending lines quoted |
| [editorial-standards](skills/editorial-standards/) | Applies your house style and refuses padding and invented statistics |
| [claims-guard](skills/claims-guard/) | Only lets claims you can back up into copy and ads |
| [social-hook-generator](skills/social-hook-generator/) | Ten ranked hooks from your source, no engagement bait |
| [case-study-writer](skills/case-study-writer/) | Turns project notes into a short, honest case study with real numbers only |

### SEO
| Skill | What it does |
|---|---|
| [serp-informed-brief](skills/serp-informed-brief/) | A content brief built from the results that actually rank |
| [keyword-clustering](skills/keyword-clustering/) | Clusters a keyword export by intent, maps it to pages, flags gaps and overlaps |
| [seo-meta-sweep](skills/seo-meta-sweep/) | Rewrites titles and meta descriptions in batches, starting where it pays |
| [indexing-audit](skills/indexing-audit/) | Works out why Google isn't indexing your pages, and the fixes in order |
| [alt-text-writer](skills/alt-text-writer/) | Specific, useful alt text in bulk, skipping decorative images |
| [topic-bank](skills/topic-bank/) | A topic bank checked against everything you've published, so a schedule never repeats or runs dry |

### Research and reporting
| Skill | What it does |
|---|---|
| [competitive-landscape-teardown](skills/competitive-landscape-teardown/) | Structured analysis of 3 to 7 competitors with positioning hypotheses |
| [competitive-monitor](skills/competitive-monitor/) | Watches competitor pages and reports only material changes, quoted |
| [performance-readout](skills/performance-readout/) | Turns a messy dataset into an honest readout, and refuses trends from one data point |

### Email
| Skill | What it does |
|---|---|
| [email-sequence-drafter](skills/email-sequence-drafter/) | Lifecycle flows with one job per email and no invented urgency or proof |
| [inbox-triage-drafts-only](skills/inbox-triage-drafts-only/) | Sorts your inbox and drafts routine replies. Never sends anything |

### Running a site
| Skill | What it does |
|---|---|
| [cms-guardrails](skills/cms-guardrails/) | Drafts only, a fixed list of fields, nothing published until a human says "approved" |
| [site-migration-checklist](skills/site-migration-checklist/) | Moves a blog or newsletter off a hosted platform without losing posts, links or rankings |
| [ads-consent-check](skills/ads-consent-check/) | Checks your cookie banner, ads and privacy page against what the site really does |
| [honest-review-rules](skills/honest-review-rules/) | Owned, Tried or Wishlist on every product, affiliate links declared up front |
| [source-terms-log](skills/source-terms-log/) | A dated record of how you use each API or data source, checked against its terms |

## How these are written

Every Skill follows the same few rules:

- **A narrow trigger.** The description says exactly when the Skill should load, so it shows up when it's needed and stays out of the way otherwise.
- **Refusals.** Each one says what Claude must not do: invent a number, pad a draft, publish, send, guess a price.
- **Placeholders, not guesses.** When something is missing, Claude writes `[MISSING: ...]` or asks.
- **Content is data.** Skills that read web pages, emails or CMS content treat that text as material, never as instructions.

Want to know when a Skill earns its place and when a plain prompt is enough? [Claude Skills for marketing: the complete guide](https://marketingprompthub.com/blog/claude-skills-for-marketing).

## More

- [30 Claude prompts for marketers](https://marketingprompthub.com/prompts/), four of them free in full
- [The Hub](https://marketingprompthub.com/): the full prompt library, playbooks and agent blueprints, one payment, nothing renews

## Licence

[CC BY 4.0](LICENSE). Use them, change them and share them, commercially too. Credit "Marketing Prompt Hub" with a link to https://marketingprompthub.com/.

Found a problem or have an idea? Open an issue.
