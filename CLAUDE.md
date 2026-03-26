# CLAUDE.md

This repo is the PayIt2 Campaign Coach plugin for Claude Code.

## Structure

All plugin content lives in the `plugin/` folder:

```
plugin/
  .claude-plugin/plugin.json    # Plugin manifest
  skills/                       # 6 workflow skills
    campaign-creation/SKILL.md
    campaign-promotion/SKILL.md
    donor-engagement/SKILL.md
    campaign-analytics/SKILL.md
    event-management/SKILL.md
    group-collection/SKILL.md
  commands/                     # 6 slash commands
    launch-fundraiser.md
    plan-event.md
    collect-from-group.md
    weekly-checkin.md
    boost-campaign.md
    thank-donors.md
  agents/                       # 6 autonomous agents
    campaign-coach.md
    content-generator.md
    donor-outreach.md
    seo-optimizer.md
    event-promoter.md
    group-collector.md
```

Root-level files (`CLAUDE.md`, `README.md`, `LICENSE`, `build-plugin.sh`) are NOT included in the zip.

## Building the Plugin Zip

After editing files in `plugin/`, rebuild the zip:

```bash
./build-plugin.sh
```

This creates `payit2-campaign-coach.zip` in the repo root. Upload it to Claude via Settings > Plugins > Update.

## Git Workflow

1. Edit files inside `plugin/` (skills, agents, commands, or manifest)
2. Run `./build-plugin.sh` to rebuild the zip
3. Commit both the changed source files and the updated zip
4. Upload the zip to Claude
