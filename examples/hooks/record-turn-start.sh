#!/usr/bin/env bash
set -euo pipefail

input="$(cat)"
raw_session_id="$(jq -r '.sessionId // .session_id // "default"' <<<"$input")"
session_id="$(printf '%s' "$raw_session_id" | tr -c 'A-Za-z0-9._-' '_')"

dir="${TMPDIR:-/tmp}/ai-assistant-turns"
mkdir -p "$dir"
date +%s > "$dir/${session_id}.start"
