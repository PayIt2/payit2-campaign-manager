#!/bin/bash
# Create a full plugin release: build zip, commit, push, GitHub release with zip asset,
# sync to marketplace repo, and publish a matching marketplace release.
#
# Usage:
#   ./release.sh <version> "<release title>" ["<release notes>"]
#
# Examples:
#   ./release.sh v1.1.0 "v1.1.0 — New feature"
#   ./release.sh v1.1.0 "v1.1.0 — New feature" "Added /analyze command"

set -e

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
MARKETPLACE_DIR="$REPO_DIR/../payit2-plugins-marketplace"
ZIP_NAME="payit2-campaign-assistant.zip"

VERSION="${1}"
TITLE="${2}"
NOTES="${3:-"Plugin zip attached."}"

if [[ -z "$VERSION" || -z "$TITLE" ]]; then
  echo "Usage: ./release.sh <version> \"<title>\" [\"<notes>\"]"
  echo "  Example: ./release.sh v1.1.0 \"v1.1.0 — New feature\""
  exit 1
fi

cd "$REPO_DIR"

# Strip leading "v" for the version string written into plugin.json
SEMVER="${VERSION#v}"
PLUGIN_JSON="plugin/.claude-plugin/plugin.json"

echo "==> Updating version in $PLUGIN_JSON to $SEMVER..."
# Use Python for reliable in-place JSON editing (no GNU sed required on macOS)
python3 -c "
import json, sys
with open('$PLUGIN_JSON') as f:
    data = json.load(f)
data['version'] = '$SEMVER'
with open('$PLUGIN_JSON', 'w') as f:
    json.dump(data, f, indent=2)
    f.write('\n')
"
echo "    Done."

echo ""
echo "==> Building plugin zip..."
./build-plugin.sh

echo ""
echo "==> Committing and pushing plugin repo..."
git add -A
if git diff --cached --quiet; then
  echo "    (nothing to commit)"
else
  git commit -m "release: $VERSION"
fi
git push

echo ""
echo "==> Creating GitHub release $VERSION on payit2-campaign-assistant..."
gh release create "$VERSION" "$ZIP_NAME" \
  --title "$TITLE" \
  --notes "$NOTES"

echo ""
echo "==> Syncing plugin files to marketplace..."
rsync -av --delete \
  --exclude='.DS_Store' \
  "$REPO_DIR/plugin/" \
  "$MARKETPLACE_DIR/payit2-campaign-assistant/"

echo ""
echo "==> Committing and pushing marketplace repo..."
cd "$MARKETPLACE_DIR"
git add -A
if git diff --cached --quiet; then
  echo "    (nothing to commit in marketplace)"
else
  git commit -m "release: sync payit2-campaign-assistant $VERSION"
fi
git push

echo ""
echo "==> Creating GitHub release $VERSION on payit2-plugins-marketplace..."
cp "$REPO_DIR/$ZIP_NAME" "$MARKETPLACE_DIR/$ZIP_NAME"
gh release create "$VERSION" "$ZIP_NAME" \
  --title "$TITLE" \
  --notes "$NOTES"
rm "$MARKETPLACE_DIR/$ZIP_NAME"

echo ""
echo "Done! Released $VERSION to both repos."
echo "  https://github.com/PayIt2/payit2-campaign-assistant/releases/tag/$VERSION"
echo "  https://github.com/PayIt2/payit2-plugins-marketplace/releases/tag/$VERSION"
