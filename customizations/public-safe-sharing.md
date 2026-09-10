# Public-safe sharing

## Need

Assistant customizations often contain real context: repositories, teammates, customers, local paths,
internal dashboards, tokens, and personal notes. That makes a review step essential before sharing
anything publicly.

## What this customization does

It gives the assistant a clear rule: public examples should explain the pattern without exposing the
private source material.

## Claude

Claude can help rewrite private instructions into public-safe examples, but it should not copy the
original config verbatim. The safer pattern is to generalize first, then publish only the generic
version.

Example:

```md
Before writing public docs, issues, PRs, or examples, remove secrets, private URLs, customer names,
internal project names, and local machine-specific paths.
Use placeholders when the structure matters but the real value should stay private.
```

## GitHub Copilot

Copilot often works close to the repository and shell, so the instruction should be explicit about
not printing or committing sensitive data.

Example:

```md
Examples in public repositories must use placeholders for company names, internal systems, private
paths, tokens, credentials, customer details, and personal data.
```

## Structure

I keep public-safety guidance visible and direct:

- What must never be published.
- Which placeholders to use.
- How to review examples before commit.
- What to do when unsure.

## Practical example

```md
Use `[company]`, `[internal-system]`, `[repo]`, `[customer]`, and `[path]` placeholders when an
example needs structure but the real value should not be public.
```

## Tips for adapting

Make your redaction list match your actual risk profile. If your work touches regulated data,
customer data, or private incident response, be stricter than the examples here.

## Public-safety notes

Do not publish:

- Secrets, tokens, credentials, or API keys.
- Private organization, team, repository, branch, project, or customer names.
- Internal URLs, dashboards, incident links, and support references.
- Local filesystem paths that reveal sensitive structure.
- Sensitive personal information.
- Copied local config that has not been reviewed and redacted.
