# Open Items

> **Platform roadmap:** See PLATFORM-STANDARDS.md Section 19 for the org-wide implementation phases.

Outstanding work for the PayIt2 Campaign Assistant Claude plugin.

---

- [ ] **Connect to live PayIt2 REST API** — Plugin currently uses static reference data in standalone mode and live MCP data when connected. Direct REST API integration (separate from MCP) is still pending V2 platform launch.
- [ ] **Publish to Claude plugin directory** — Pending REST API integration above.
- [ ] **Body-copy terminology audit** — v1.6 migrated structural names (skill folders, agent files, MCP tool calls) to participant-domain terms, but several skill body-copy / template references still use "supporter(s)": `CLAUDE.md` line 24, `plugin/skills/check-in/references/optimization-checklist.md`, `plugin/skills/promote/SKILL.md`, `plugin/skills/promote/references/email-sequences.md`, `plugin/skills/engage/SKILL.md`, `plugin/skills/engage/references/thank-you-templates.md`, `plugin/skills/engage/references/update-templates.md`. Decide which should migrate to "participant" / context-specific terms (PLATFORM-STANDARDS Section 16 allows "supporter" in fundraiser-context copy, so some may be intentional). Note: `engage/SKILL.md` line 64 says *Never "Dear Supporter."* — that's an instructional negation, not a label, and is correct as-is.
