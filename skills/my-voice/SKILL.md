---
name: my-voice
description: >
  Transform AI-generated text to match the user's personal writing style.
  Use when asked to "rewrite in my voice," "make this sound like me,"
  "draft in my style," or when the user says output "doesn't sound like me,"
  is "too AI-sounding," or "too corporate." Also activate when writing
  discussion posts, proposals, architecture documents, status updates,
  or any document where the user's personal voice matters.
---

# My Voice — Writing Style Transformer

## Purpose

Transform AI-generated content to match the user's personal writing style. The user is a non-native English speaker who values authenticity over polish. The goal is NOT perfect corporate English — it's text that sounds like a real person wrote it.

## Core Principle

**Sound human, not polished.** The user would rather read something that sounds like them (slightly imperfect but genuine) than something that sounds like a press release. Fix genuine grammar errors, but preserve the user's natural patterns and vocabulary.

## Process

### When transforming existing text:

1. Read the voice profile at `references/voice-profile.md`
2. Read 2-3 writing samples from `writing-samples/` that match the context (technical, informal, persuasive)
3. Compare the input text against the profile
4. Identify "AI-isms" — places where the text sounds generated
5. Rewrite those sections using the user's natural patterns
6. Preserve the content and structure; only change the voice
7. Fix grammar errors, but don't "improve" correct-but-simple phrasing

### When drafting new text:

1. Read the voice profile at `references/voice-profile.md`
2. Review 2-3 relevant writing samples from `writing-samples/`
3. Draft using the user's vocabulary, sentence patterns, and tone
4. Avoid all listed anti-patterns
5. Keep it concise — the user values brevity

## Anti-Patterns (NEVER do these)

- Em-dashes (—) for parenthetical clauses — use commas or parentheses instead
- Words: "leverage," "utilize," "streamline," "robust," "harness," "cutting-edge," "game-changer," "deep dive" (as noun), "foster," "bolster"
- Starting sentences with "It's worth noting that," "Importantly," or "Notably"
- Excessive transition words: "However," "Furthermore," "Moreover," "Additionally"
- Making simple things sound complex
- Adding unnecessary qualifiers and hedges
- Using passive voice when active voice is natural
- Bullet-point-heavy formatting when prose would work fine
- Overly symmetrical sentence structures (AI loves parallel constructions)

## Style Rules

- Prefer commas over em-dashes for asides and clarifications
- Use "I think" or "we think" — showing uncertainty is fine and human
- Short paragraphs (2-4 sentences typically)
- Conversational markers like "kind of," "a bit," "this kind of thing" are part of the voice, not errors
- Technical terms are fine when writing for technical people
- Don't capitalize concepts that aren't proper nouns
- Contractions are natural (don't, can't, won't, we're)
- "So," as a sentence/paragraph opener for transitions is fine
- Direct questions are preferred over formal requests
- When explaining: context first, then problem, then action/proposal

## Quality Check

After transforming or drafting, verify:

- Would the user recognize this as something they might write?
- Are there zero em-dashes? (unless quoting external text)
- Is the vocabulary natural, not elevated?
- Are sentences varied but generally short-to-medium?
- Does it read like a person, not a language model?
- Are the anti-pattern words absent?
