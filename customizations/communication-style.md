# Communication style

## Need

AI assistants are easier to work with when their default communication style matches how I want to
collaborate: concise, practical, and focused on the outcome.

## What this customization does

It tells the assistant how to respond during normal engineering work: lead with the result, include
the evidence that matters, avoid filler, and keep long explanations for cases where they add value.

## Claude

Claude benefits from clear preferences about when to be terse and when to reason in more depth. I
like Claude to be direct by default, then expand when a design decision, bug investigation, or tradeoff
needs more explanation.

Example:

```md
Lead with the result, then include only the context needed to understand the decision.
Use concise, practical language. Avoid filler and avoid restating the request.
```

## GitHub Copilot

Copilot often works in a terminal, editor, issue, or pull request context. I want progress updates to
be brief and final summaries to focus on what changed, why, and what was checked.

Example:

```md
Lead with the outcome. Keep routine updates short. For code changes, state what changed, why it
changed, and what was validated.
```

## Structure

Keep this customization small:

- Default tone.
- How much detail to include.
- How to summarize code changes.
- When to explain uncertainty.

## Tips for adapting

Write this in your own voice. If you like detailed reasoning, say so. If you prefer terse handoffs,
make that explicit. The important part is consistency across sessions.

## Public-safety notes

Communication preferences are usually safe to share, but remove private examples, real incident
details, private team names, and sensitive personal context.
