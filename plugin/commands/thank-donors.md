---
description: Generate personalized thank-you messages for donors
allowed-tools: Read, Write, Edit
argument-hint: [donor names/amounts or "all recent"]
---

Generate personalized thank-you messages for: $ARGUMENTS

Follow the supporter-engagement skill's thank-you system:

1. **Gather Donor Information**: Ask the organizer for a list of donors to thank. For each donor, get:
   - First name
   - Donation amount
   - Relationship to organizer (if known: family, friend, colleague, stranger)
   - Any personal detail (how they know the person, shared history)

   If the organizer says "all recent" or provides a general description, help them list out the donors they need to thank.

2. **Generate Personalized Messages**: For each donor, create a thank-you message calibrated to their tier:
   - **Micro ($1-$25)**: Warm, appreciative, "every dollar matters" framing
   - **Standard ($26-$100)**: Personal, specific impact of their amount
   - **Major ($101-$500)**: Deeply personal, names how their gift moves the needle
   - **Anchor ($500+)**: Handcrafted personal letter, specific fund allocation

   Each message follows the framework: Name them → Acknowledge the act → Show impact → Humanize → Extend (optional share request).

3. **Channel-Specific Versions**: For each donor, generate the message in multiple formats:
   - **Direct message** (text, email, or DM): Personal, private thank-you
   - **Public post** (social media): Thank-you that doubles as social proof (only with permission)
   - **Campaign update excerpt**: Gratitude that can be included in the next campaign update

4. **Batch Gratitude Post**: Create one social media post that thanks all recent donors collectively. This post should:
   - Name donors by first name (or anonymously if preferred)
   - Show progress toward the goal
   - Inspire others to donate by showing community support
   - Include a fresh CTA

5. **Share Request**: For each donor above the Standard tier, generate a gentle share request message:
   - Frame sharing as optional, not transactional
   - Provide a pre-written share message they can copy-paste
   - Make it easy: "Just forward this to one person who might care"

Save all thank-you messages to a markdown file in the workspace folder, organized by donor name for easy copy-paste.
