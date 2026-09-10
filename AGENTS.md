# AGENTS.md

Guidance for AI assistants working in this repository.

## Purpose

This repo documents public-safe AI assistant customizations. It is a dotfiles-style reference, not a
dump of private local config.

## Editing rules

- Keep each customization in one file under `customizations/`.
- Use separate `## Claude` and `## GitHub Copilot` sections when the customization applies to both.
- Prefer concrete examples over abstract advice.
- Keep prose short and practical.
- Do not copy private local config verbatim. Generalize and redact first.
- Update `README.md` when adding, renaming, or removing customization files.
- Put runnable generic examples under `examples/`.
- Put reusable public skills under `skills/<skill-name>/SKILL.md`.

## Public-safety check

Before committing, scan for secrets, tokens, credentials, private company data, customer names,
internal URLs, local machine paths, private repository names, and sensitive personal information.

Useful checks:

```bash
git diff --check
rg -n "Bearer|BEGIN .*PRIVATE KEY|AKIA|ghp_|github_pat_|/home/|https?://" --glob '!.git/**' .
```

Hits are not always wrong, but every hit needs review before publishing.

## Validation

- Run `bash -n` for shell examples.
- Run `jq empty` for JSON snippets.
- Make example scripts executable when they are meant to be copied and run.
