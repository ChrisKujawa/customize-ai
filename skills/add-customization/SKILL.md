---
name: add-customization
description: Add a new public-safe AI assistant customization page to this repo, with examples and README updates.
---

# Add Customization

## Overview

Use this skill when adding a new assistant customization, hook, workflow, instruction pattern, or
tooling example to this repo. The goal is to share the useful idea without publishing private local
config.

## Trigger conditions

Use this skill when:

- A new Claude or GitHub Copilot customization should be documented.
- A local skill, hook, or workflow should be turned into a public-safe example.
- A new generic example is added under `examples/`.

## Process

1. Identify the customization and the workflow problem it solves.
2. Read the source material, but do not copy it verbatim.
3. Create one page under `customizations/<name>.md`.
4. Include concise sections for need, behavior, Claude, GitHub Copilot, structure, adaptation tips,
   and a sharing note when the customization has specific publishing risks.
5. Add generic examples under `examples/` if a snippet helps.
6. Update the customization list and repository tree in `README.md`.
7. Run formatting and safety checks:

   ```bash
   git diff --check
   find examples -name '*.sh' -print0 | xargs -0 -r bash -n
   find examples -name '*.json' -print0 | xargs -0 -r jq empty
   rg -n "Bearer|BEGIN .*PRIVATE KEY|AKIA|ghp_|github_pat_|/home/|https?://" --glob '!.git/**' .
   ```

8. Commit with a Conventional Commit message.

## Anti-patterns

- Publishing a private config file with only light edits.
- Adding another generic advice page with no concrete customization.
- Forgetting to update the README index.
- Treating every safety-scan hit as a failure without reviewing whether it is an intentional
  placeholder or checklist item.

## Example

```text
customizations/agent-done-beep.md
examples/hooks/record-turn-start.sh
examples/hooks/beep-if-long.sh
```

This pattern documents the idea, then keeps the runnable generic scripts in `examples/`.
