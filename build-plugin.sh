#!/bin/bash
# Build payit2-campaign-manager.zip - packages all plugin files for distribution.

set -e
cd "$(dirname "$0")"

OUTPUT="payit2-campaign-manager.zip"

# Remove old build
rm -f "$OUTPUT"

# Zip the plugin contents (skills, commands, agents, manifest)
zip -r "$OUTPUT" \
  skills/ \
  commands/ \
  agents/ \
  .claude-plugin/ \
  -x '*.DS_Store'

echo "Built $OUTPUT ($(du -h "$OUTPUT" | cut -f1))"
