# PR ready for human review

## Need

A PR can work and still be annoying to review. Before asking a human to spend attention on it, I want
one final pass for clarity, coverage, automated review, CI, and cleanup.

## What it does

This customization treats "ready for review" as a real checklist, not just a GitHub button. It checks
the changed content, tests, description, automated review feedback, CI state, and commit history
before handing the PR over.

## Claude

Claude is useful for the deep read: does the PR actually satisfy the acceptance criteria, does the
wording make sense, and did iteration leave stale notes behind?

Example:

```md
# Skill: PR ready for human review

Use before requesting human review.

1. Read the linked issue or stated acceptance criteria.
2. Check that the diff covers each required behavior.
3. Review tests or explain why the change does not need new tests.
4. Re-read changed docs, comments, and PR text for stale implementation notes.
5. Triage automated review feedback before handing the PR to a human.
6. Confirm the PR description still matches the actual diff.
```

## GitHub Copilot

Copilot can combine that content review with repository commands: inspect the diff, check PR status,
run targeted validation, and prepare a cleaner final branch.

Example:

```md
Before marking a draft PR ready, run the Copilot review loop, address verified findings, confirm
required checks are green, and make sure the description matches the current diff.
```

## Structure

Useful checks:

- Acceptance criteria.
- Test coverage.
- Full changed-file read.
- PR description freshness.
- Copilot review loop.
- CI status.
- Commit hygiene.

## Tips for adapting

- Do the content review before squashing. Fixups are easier to isolate before history cleanup.
- Run automated review before human review so reviewers see fewer mechanical issues.
- Keep the checklist focused on reviewer experience.
- Do not block a doc-only or refactor PR on unnecessary tests, but make the reasoning explicit.

Related: [Copilot review loop](copilot-review-loop.md).

## Sharing note

Do not publish real PR links, customer context, internal issue trackers, private CI URLs, or reviewer
names unless they are already meant to be public.
