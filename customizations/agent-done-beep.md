# Beep when a long agent turn finishes

## Need

I often start an agent task, switch context, and miss that it finished. A small completion sound makes
the workflow feel less like polling a terminal and more like working with a teammate who taps you on
the shoulder.

The key detail: only beep for long turns. Short back-and-forth replies should stay quiet.

## What it does

This customization uses two hooks:

1. A pre-turn hook records when the current turn starts.
2. A post-turn hook checks the elapsed time and plays a sound only if the turn took longer than a
   threshold.

The example threshold is 60 seconds.

The shell scripts use `jq` to read the hook payload.

## Structure

- [`examples/hooks/record-turn-start.sh`](../examples/hooks/record-turn-start.sh) stores a timestamp
  per assistant session.
- [`examples/hooks/beep-if-long.sh`](../examples/hooks/beep-if-long.sh) reads that timestamp, removes
  it, and plays a sound if the turn was long enough.
- The Claude and Copilot snippets wire the same scripts into their hook systems.

## Claude

Claude can run this through a `UserPromptSubmit` hook and a `Stop` hook.

Example settings snippet:

```json
{
  "hooks": {
    "UserPromptSubmit": [
      {
        "hooks": [
          {
            "type": "command",
            "command": "$HOME/.local/share/ai-hooks/record-turn-start.sh"
          }
        ]
      }
    ],
    "Stop": [
      {
        "hooks": [
          {
            "type": "command",
            "command": "$HOME/.local/share/ai-hooks/beep-if-long.sh"
          }
        ]
      }
    ]
  }
}
```

## GitHub Copilot

Copilot can use the same scripts with `userPromptSubmitted` and `agentStop`.

Example hook file:

```json
{
  "version": 1,
  "hooks": {
    "userPromptSubmitted": [
      {
        "type": "command",
        "bash": "$HOME/.local/share/ai-hooks/record-turn-start.sh"
      }
    ],
    "agentStop": [
      {
        "type": "command",
        "bash": "$HOME/.local/share/ai-hooks/beep-if-long.sh"
      }
    ]
  }
}
```

## Tips for adapting

- Raise the threshold if you only want notifications for genuinely long tasks.
- Replace the sound command with your OS preference.
- Keep the hook quiet on failure. Notification hooks should not interrupt the assistant.
- Use a temp file keyed by session id so parallel sessions do not overwrite each other.
- Replace the example hook paths with real absolute paths on your machine.

## Sharing note

Do not publish your real hook file without checking paths and commands first. Replace private paths,
internal script names, machine-specific details, and anything that references private tools.
