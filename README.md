# customize-ai

A public, personal reference for how I customize AI assistant tools.

The idea is similar to a classic dotfiles repo. Developers used to share how they tuned their shell,
editor, terminal, window manager, and Linux setup. These days, a lot of my workflow also depends on
how I configure AI assistants: instructions, skills, reusable prompts, review habits, and task
playbooks.

This repo collects those patterns in a public-safe form so other developers can browse, adapt, and
build their own setup.

## What is covered

Each file describes one customization area and includes separate notes for Claude and GitHub
Copilot:

- [Communication style](customizations/communication-style.md)
- [Coding workflow](customizations/coding-workflow.md)
- [Reusable workflows](customizations/reusable-workflows.md)
- [Public-safe sharing](customizations/public-safe-sharing.md)

## How to use this repo

Start with the customization that matches the workflow problem you want to solve. Copy the structure,
not the exact wording. Replace personal preferences with your own team, project, and risk tolerance.

Treat this like a dotfiles repo: fork, remix, delete what you do not use, and keep the parts that
make your daily work smoother.

## Public-safety rule

Everything in this repo should be safe to publish.

Do not commit secrets, tokens, credentials, private company data, customer names, private paths,
internal URLs, unreleased strategy, sensitive personal information, or copied local config that has
not been reviewed and redacted.

When in doubt, replace real values with placeholders and explain the pattern instead of publishing
the original content.

## Repository structure

```text
.
├── README.md
├── customizations/
│   ├── coding-workflow.md
│   ├── communication-style.md
│   ├── public-safe-sharing.md
│   └── reusable-workflows.md
├── examples/
│   └── README.md
└── LICENSE
```

## License

MIT
