# Self-reflect after a session

## Need

Good sessions create useful lessons: what worked, what was painful, what should become a rule, and
what should be remembered next time. Without a closing reflection, those lessons disappear.

## What it does

This customization turns the end of a session into a short retro. It compares intent with reality,
captures surprises, records process friction, and turns durable lessons into followups.

## Claude

Claude is a good fit for a reflective skill because it can review the conversation, changed files,
plans, and notes, then write a concise retrospective.

Example skill shape:

```md
# Skill: self-reflect

Use at the end of a meaningful session.

1. Define the scope of the session.
2. Gather the plan, conversation notes, commits, and diff.
3. Compare what was planned with what actually happened.
4. Note surprises, friction, and assistant behavior to improve.
5. Draft followups: memory, instruction updates, docs, or cleanup tasks.
```

## GitHub Copilot

Copilot can use the same pattern close to the repo: inspect the branch, summarize what shipped, and
turn repeated corrections into future instructions.

Example trigger:

```md
Use this when a feature, investigation, or multi-step task is complete and there are lessons worth
preserving for future sessions.
```

## Structure

Keep the retro short:

- Goal.
- What shipped.
- Plan vs. reality.
- Surprises and dead ends.
- Process friction.
- What to improve next time.
- Followups worth saving.

## Tips for adapting

- Run it only after meaningful work. A tiny one-command session usually does not need a retro.
- Keep private notes private. Public examples should show the template, not the real session.
- Turn repeated lessons into durable instructions only when they are general and actionable.

## Public-safety notes

Retros can contain sensitive context. Remove private repo names, customer details, internal links,
personal notes, auth failures, incident details, and local paths before sharing.
