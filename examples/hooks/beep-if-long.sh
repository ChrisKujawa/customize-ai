#!/usr/bin/env bash
set -euo pipefail

threshold_seconds="${THRESHOLD_SECONDS:-60}"

input="$(cat)"
raw_session_id="$(jq -r '.sessionId // .session_id // "default"' <<<"$input")"
session_id="$(printf '%s' "$raw_session_id" | tr -c 'A-Za-z0-9._-' '_')"

start_file="${TMPDIR:-/tmp}/ai-assistant-turns/${session_id}.start"
[[ -f "$start_file" ]] || exit 0

start="$(cat "$start_file")"
now="$(date +%s)"
elapsed=$((now - start))
rm -f "$start_file"

if ((elapsed >= threshold_seconds)); then
  if command -v paplay >/dev/null 2>&1; then
    paplay /usr/share/sounds/freedesktop/stereo/complete.oga 2>/dev/null &
  elif command -v afplay >/dev/null 2>&1; then
    afplay /System/Library/Sounds/Glass.aiff 2>/dev/null &
  else
    printf '\a'
  fi
fi
