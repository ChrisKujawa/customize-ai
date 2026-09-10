# Coding workflow

## Need

AI coding sessions go better when the assistant knows how I expect code changes to be made: small,
complete, tested, and aligned with the project instead of invented from scratch.

## What this customization does

It sets expectations for investigation, implementation, validation, and handoff. The assistant should
reuse existing patterns, avoid broad rewrites, and verify the actual artifact when possible.

## Claude

Claude is useful for larger reasoning-heavy changes, but it still needs guardrails to avoid turning a
small task into a redesign.

Example:

```md
Make the smallest complete change that solves the problem.
Prefer existing helpers and project conventions over adding new abstractions.
Run the most targeted useful validation before considering the work done.
```

## GitHub Copilot

Copilot is often close to the repository and command line, so I want it to inspect the real code,
make focused edits, and use the project's existing build or test commands.

Example:

```md
Use the smallest test, build, or lint command that covers the changed behavior.
Do not claim success until the relevant artifact has been checked.
```

## Structure

A practical coding-workflow customization can cover:

- How to investigate before editing.
- How broad a change should be.
- How to choose validation commands.
- How to handle unrelated local changes.
- How to summarize the final result.

## Practical example

```md
Before changing code, look for nearby patterns and reuse them.
Do not introduce a new dependency or abstraction unless the existing code clearly needs it.
If validation fails, report the real failure instead of describing the change as complete.
```

## Tips for adapting

Use project-level instructions for exact commands. Keep global coding preferences about behavior and
judgment, not about one repository's build system.

## Public-safety notes

Do not publish private build commands, internal package names, private repository paths, customer
fixtures, or logs that contain sensitive values. Use generic examples instead.
