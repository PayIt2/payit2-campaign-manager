# Completed Items

Items completed from docs/OPEN_ITEMS.md, with date and outcome.

---

## 2026-04-28 (v1.6.0 release)

- **MCP server integration** — Plugin aligned with PayIt2 MCP Server spec. Both **standalone** mode (works for any Claude user, no PayIt2 account required) and **MCP-connected** mode (live campaign data + direct create/update via PayIt2 MCP) are now first-class. Each skill explicitly declares both operating modes at the top. The plugin no longer prompts users to authenticate when MCP tools aren't present — it just runs the standalone workflow. MCP tool renames (`search_supporters` → `search_participants`, `get_supporter_insights` → `get_participant_insights`) reflected in the plugin's tool calls.
- **Terminology: "Supporters" → "Participants"** — Skill names, agent names, prompts, and docs migrated to participant-domain terminology per PLATFORM-STANDARDS Section 16. Current skills: `campaign`, `campaign-context`, `check-in`, `engage`, `promote`. Agent: `campaign-assistant.md`. No `supporter-*` names remain. Context-specific variants (donor / attendee / member) preserved where the campaign type is known. The `supporter_pays` fee-mode enum value is unchanged — it's a named option, not a role reference.

See `CHANGELOG.md` v1.6.0 for the full release notes.

---

## 2026-04-03

- CLAUDE.md standardized: mandatory session start added; git workflow rewritten from 4-step to full branch/PR/merge/cleanup cycle; git workflow deduplicated to reference PLATFORM-STANDARDS Section 15 with repo-specific plugin build steps
- .github/PULL_REQUEST_TEMPLATE.md added
- docs/OPEN_ITEMS.md: roadmap reference added (Section 19); terminology audit item logged
