# Public-safe sharing

## Need

Assistant configs often start as private dotfiles. Public examples need a redaction pass because the
useful pattern is usually mixed with private paths, repositories, incidents, customers, or personal
notes.

## What this customization does

It keeps the pattern while removing private source material.

## Claude

Example:

```md
Before writing public docs, issues, PRs, or examples, remove secrets, private URLs, customer names,
internal project names, and local machine-specific paths.
Use placeholders when the structure matters but the real value should stay private.
```

## GitHub Copilot

Example:

```md
Examples in public repositories must use placeholders for company names, internal systems, private
paths, tokens, credentials, customer details, and personal data.
```

## Structure

Keep this direct: what not to publish, which placeholders to use, how to review, and what to do when
unsure.

## Practical example

```md
Use `[company]`, `[internal-system]`, `[repo]`, `[customer]`, and `[path]` placeholders when an
example needs structure but the real value should not be public.
```

## Tips for adapting

Make the redaction list match your risk profile. If your work touches regulated or customer data, be
stricter.

## Redaction checklist

Do not publish:

- Secrets, tokens, credentials, or API keys.
- Private organization, team, repository, branch, project, or customer names.
- Internal URLs, dashboards, incident links, and support references.
- Local filesystem paths that reveal sensitive structure.
- Sensitive personal information.
- Copied local config that has not been reviewed and redacted.
