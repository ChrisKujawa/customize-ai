# customize-ai

My public dotfiles-style repo for AI assistant customizations.

Developers have always customized their tools: shell, editor, terminal, window manager, Linux setup.
Now I also customize AI assistants. This repo shares the parts that are useful outside my private
setup: hooks, instructions, small workflows, and examples for Claude and GitHub Copilot.

The goal is not to publish my real config verbatim. The goal is to share public-safe patterns that
other developers can copy, adapt, or use as inspiration.

## Customizations

Each customization gets its own file, with separate sections for Claude and Copilot.

- [Beep when a long agent turn finishes](customizations/agent-done-beep.md)
- [Communication style](customizations/communication-style.md)
- [Coding workflow](customizations/coding-workflow.md)
- [Reusable workflows](customizations/reusable-workflows.md)
- [Public-safe sharing](customizations/public-safe-sharing.md)

## How to browse

Start with a customization that solves a real annoyance in your own workflow. Copy the shape, not the
private details. The example files under [`examples/`](examples/) are deliberately generic.

## Public-safety rule

Everything here should be safe to publish. Do not commit secrets, tokens, credentials, private
company data, customer names, internal URLs, local machine paths, sensitive personal information, or
unreviewed local config.

## Repository structure

```text
.
├── README.md
├── customizations/
│   ├── agent-done-beep.md
│   ├── coding-workflow.md
│   ├── communication-style.md
│   ├── public-safe-sharing.md
│   └── reusable-workflows.md
├── examples/
│   ├── README.md
│   └── hooks/
│       ├── beep-if-long.sh
│       ├── claude-settings-snippet.json
│       ├── copilot-hook.json
│       └── record-turn-start.sh
└── LICENSE
```

## License

MIT.

I use MIT here because this repo is mostly documentation, snippets, and small scripts meant to be
copied into personal setups. MIT is short, familiar, and low-friction for dotfiles-style reuse.

Apache 2.0 is also a good license, especially for larger software projects where explicit patent
language matters. For this repo, that extra structure feels heavier than needed.
