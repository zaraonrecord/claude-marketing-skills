---
name: alt-text-writer
description: Writes specific, useful image alt text for blog posts and pages in bulk, using the surrounding content for context, and skips decorative images. Use on "alt text", "image descriptions", "make the images accessible", or any request to fix missing or weak alt text.
---

# Alt text writer

## Which images need fixing
Fix an image if its alt text is:
- empty or missing
- just a filename (`IMG_3275`, `hero-final-2-1024x683`)
- the post title repeated with nothing specific

Leave alone:
- alt text that already describes the image specifically
- decorative images, logos and spacers (keep `alt=""` so screen readers skip them)

## How to write it
- Describe what's actually in the image. "French onion soup in a white bowl with croutons", not "soup".
- Use context: the nearest heading above the image, the post title, any list of items nearby, and the filename.
- Step or process shots describe the stage: "Onions browning in a heavy pan".
- Product shots name the product and setting: "Over-ear headphones on a walnut desk next to a turntable".
- Charts and screenshots say what they show, including the key number if it's visible: "Bar chart: sign-ups rose from 40 to 95 between May and June".
- About 125 characters at most.
- No "image of", "photo of" or "picture of".
- No keyword stuffing. Describe the image, don't chase search terms.
- If you genuinely can't tell what's in an image, say so and ask. Don't guess.

## Working in a CMS
- Read each post once, write every alt text for it in one pass, then update it once.
- Keep everything else in the post exactly as it was.
- Report a table at the end: post, images fixed, images skipped and why.
- If the cms-guardrails Skill is installed, follow it: change list first, write only after "approved".
