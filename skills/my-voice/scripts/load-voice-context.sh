#!/usr/bin/env bash
# Outputs the voice profile and lists available writing samples.
# Uses dirname to resolve paths relative to the skill directory,
# so this works regardless of the caller's working directory.

set -euo pipefail

SKILL_DIR="$(cd "$(dirname "$0")/.." && pwd)"

profile="$SKILL_DIR/references/voice-profile.md"
samples_dir="$SKILL_DIR/writing-samples"

if [ ! -f "$profile" ]; then
  echo "STATUS: no-profile"
  echo "SKILL_DIR: $SKILL_DIR"
  exit 0
fi

echo "STATUS: ready"
echo "SKILL_DIR: $SKILL_DIR"
echo ""
echo "=== VOICE PROFILE ==="
cat "$profile"
echo ""
echo "=== AVAILABLE SAMPLES ==="
find "$samples_dir" -name '*.md' -type f | sort
