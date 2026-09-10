# PR description trim

## Need

Long PR descriptions often hide the useful part. Reviewers need what changed, why it matters, and
anything non-obvious. They do not need a second diff, a commit log, or defensive over-explanation.

## What it does

This customization trims PR bodies into concise reviewer context. It follows the repository template,
matches the actual diff, removes duplication, and keeps verification short.

## Claude

Claude is useful for rewriting a draft description into a cleaner narrative.

Example:

```md
# Skill: PR description trim

Rewrite this PR description so it explains what changed and why.
Follow the repository template.
Cut duplicated facts, per-commit summaries, stale process notes, and defensive rationale.
Keep verification to one short line unless the details matter to reviewers.
```

## GitHub Copilot

Copilot can ground the rewrite in the branch by reading the template and diff before editing the PR
body.

Example:

```md
Before writing a PR body, read the PR template and inspect the branch diff. The description should
cover the actual change, not unrelated base-branch drift.
```

## Structure

Good PR descriptions usually need:

- What changed.
- Why it matters.
- Non-obvious reviewer context.
- Related issue.
- Short validation note.

## Tips for adapting

- If GitHub already shows it, do not repeat it.
- Keep rationale only when a reviewer needs it to understand the decision.
- Use a temporary Markdown file when updating PR bodies from the CLI, especially if the text contains
  backticks.

## Sharing note

Public examples should not include private issue links, unreleased plans, customer names, internal
repository names, private branch names, or pasted CI output with sensitive details.
