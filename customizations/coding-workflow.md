# Coding workflow

## Need

I want coding agents to make small, complete changes that fit the project.

## What this customization does

It nudges the assistant toward reading first, reusing existing patterns, avoiding broad rewrites, and
checking the real artifact before calling work done.

## Claude

Example:

```md
Make the smallest complete change that solves the problem.
Prefer existing helpers and project conventions over adding new abstractions.
Run the most targeted useful validation before considering the work done.
```

## GitHub Copilot

Example:

```md
Use the smallest test, build, or lint command that covers the changed behavior.
Do not claim success until the relevant artifact has been checked.
```

## Structure

Cover investigation, change size, validation, unrelated local changes, and final handoff.

## Practical example

```md
Before changing code, look for nearby patterns and reuse them.
Do not introduce a new dependency or abstraction unless the existing code clearly needs it.
If validation fails, report the real failure instead of describing the change as complete.
```

## Tips for adapting

Put exact build commands in repo-specific instructions. Keep global rules about judgment and
workflow.
