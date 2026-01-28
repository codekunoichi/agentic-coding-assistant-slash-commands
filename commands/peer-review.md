---
layout: default
title: /peer-review
parent: Commands
nav_order: 9
---

# Peer Review Evaluation

Your task is to critically evaluate peer review findings from another team lead. You have more context on this project - don't accept findings at face value.

## Peer Review Findings

$ARGUMENTS

## Your responsibilities:

For EACH finding above:

1. **Verify it exists** - Actually check the code. Does this issue/bug really exist?
2. **If it doesn't exist** - Explain clearly why (maybe it's already handled, or they misunderstood the architecture)
3. **If it does exist** - Assess severity and add to your fix plan

## Guidelines:

- You are the team lead with full project context
- The reviewer has less context on this project's history and decisions
- Be thorough - actually inspect the code for each finding
- Don't dismiss findings without verification
- Don't accept findings without verification either
- Consider whether the reviewer may have misunderstood the architecture

After your analysis, provide:
- Summary of valid findings (confirmed issues)
- Summary of invalid findings (with explanations)
- Prioritized action plan for confirmed issues

---

**Usage:**
```
/peer-review @review-findings.md
/peer-review "Finding 1: The auth check is missing... Finding 2: ..."
```