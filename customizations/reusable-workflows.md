# Reusable workflows

## Need

Some prompts become repeatable workflows: preparing a pull request, triaging CI, reviewing a design,
or turning notes into a clean issue. Capturing those workflows saves time and makes results more
consistent.

## What this customization does

It turns repeated assistant interactions into focused playbooks. Each workflow should describe when
to use it, what steps to follow, and what output should look like.

## Claude

For Claude, I like reusable workflows as skills or prompt files. They are helpful when a task needs
several steps and benefits from a consistent checklist.

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

For Copilot, reusable workflows are useful for tasks that touch GitHub, the terminal, and repository
state, such as PR cleanup, issue drafting, or CI triage.

Example:

```md
Before creating a pull request, inspect the branch diff and read the repository pull request
template. Create focused commits with Conventional Commit messages.
```

## Structure

Good reusable workflows stay short:

- Name.
- When to use it.
- Inputs needed.
- Steps.
- Expected output.
- Safety checks.

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

Create a workflow only after you have repeated the same prompt several times. If the workflow grows
too long, split it into smaller ones with clear names.

## Public-safety notes

Workflow examples can accidentally reveal how a private team operates. Remove internal tool names,
incident procedures, sensitive escalation paths, and private repository details before publishing.
