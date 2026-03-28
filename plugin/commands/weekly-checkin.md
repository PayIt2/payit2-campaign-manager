---
description: Run a weekly campaign health check with action items
allowed-tools: Read, Write, Edit, WebSearch
argument-hint: [campaign-name or current stats]
---

Run a weekly check-in for the campaign: $ARGUMENTS

Follow this structured workflow:

1. **Gather Current Stats**: Ask the organizer for their current campaign metrics:
   - Amount raised so far
   - Number of donors
   - Number of shares / page views (if available)
   - Days since launch
   - Goal amount
   - Number of campaign updates posted
   - Social channels currently being used

2. **Calculate Health Score**: Using the campaign-analytics skill, calculate a health score (0-100) based on momentum, social reach, story quality, donor engagement, goal progress, and network activation. Present the score with a breakdown of each factor.

3. **Diagnose Bottlenecks**: Run through the 3-stage diagnostic:
   - Stage 1: Is the traffic problem? (Are people seeing the campaign?)
   - Stage 2: Is it a conversion problem? (Are visitors donating?)
   - Stage 3: Is it an engagement problem? (Are donors becoming advocates?)
   Identify the primary bottleneck and explain it clearly.

4. **Generate This Week's Content**: Using the campaign-promotion skill, create:
   - 5 social media posts (varied angles from the content rotation)
   - 1 campaign update to post on the page
   - 1 email template for supporters
   - Specific posting schedule for the week

5. **Supporter Follow-Up**: Using the supporter-engagement skill:
   - Ask if there are unthanked donors and generate thank-you messages
   - Suggest a re-engagement message if momentum has slowed
   - Recommend one donor-to-advocate conversion tactic for the week

6. **Action Items**: Compile a prioritized list of 5 action items for the week, categorized as:
   - 🔴 Do today (highest impact, lowest effort)
   - 🟡 Do this week (medium effort, strong impact)
   - 🟢 Plan for next week (strategic, longer-term)

Save the weekly report and generated content to a markdown file in the workspace folder.
