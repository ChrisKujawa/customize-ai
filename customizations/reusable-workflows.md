# Reusable workflows

## Need

Some prompts become routines. Capturing them as small playbooks saves time and keeps results
consistent.

## What this customization does

It turns repeated assistant interactions into named workflows with clear steps and expected output.

## Claude

Example:

```md
# Skill: PR readiness check

Use this before asking for human review.

1. Inspect the diff.
2. Confirm the change matches the stated goal.
3. Check tests or validation output.
4. Tighten the PR description so it explains what changed and why.
5. Remove private notes, local paths, and temporary debugging details.
```

## GitHub Copilot

Example:

```md
Before creating a pull request, inspect the branch diff and read the repository pull request
template. Create focused commits with Conventional Commit messages.
```

## Structure

Use: name, when to use it, inputs, steps, expected output, safety checks.

## Practical example

```md
# Workflow: Public example review

Use before publishing assistant configuration examples.

1. Search for secrets, private URLs, customer names, and local absolute paths.
2. Replace real values with placeholders.
3. Keep the example focused on structure and intent.
4. Remove anything that only makes sense inside a private organization.
```

## Tips for adapting

Create a workflow after you have repeated the same prompt several times. Split it when it gets long.
