# Copilot review loop

## Need

Automated PR review is most useful when it is treated as a loop, not a one-off button. I want
Copilot to review, then I want the assistant to verify each finding, fix the real issues, and ask
for another round until the current diff is clean or the loop reaches a sensible cap.

## What it does

This customization makes Copilot review a pre-human-review gate. It separates real findings from
stale or incorrect comments and keeps the PR from accumulating unresolved bot feedback.

## Claude

Claude can help with the reasoning-heavy part: read each review comment, compare it to the current
diff, and decide whether the finding is still valid.

Example:

```md
# Skill: automated review loop

Use this before human review when a PR should pass an automated review gate.

1. Read the current PR diff.
2. Read the latest automated review comments.
3. Verify each finding against the current code.
4. Fix only findings that are real.
5. Summarize stale or incorrect findings instead of silently changing code.
```

## GitHub Copilot

Copilot can drive the GitHub side: request review, inspect comments, apply verified fixes, push, and
request another review.

Example:

```md
Request Copilot review on the PR. For each finding, verify it against the current branch before
changing code. Push fixes and request another review. Stop after a clean round or after three rounds.
```

## Structure

Useful steps:

- Confirm the PR is reviewable.
- Record the current review state before requesting a new review.
- Request Copilot review.
- Wait for fresh comments or a fresh review.
- Verify each finding against the current diff.
- Fix real issues.
- Repeat until clean or capped.

## Tips for adapting

- Do not assume old visible comments apply after a push.
- Do not apply bot suggestions without checking the underlying claim.
- Pick a loop cap so the process cannot run forever.
- Run this before the final human-review handoff.

## Sharing note

Use generic PR numbers and repository names in public examples. Real review comments can include
private file paths, unreleased work, customer context, or internal process details.
