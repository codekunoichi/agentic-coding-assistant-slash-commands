---
layout: default
title: /devils-advocate
parent: Commands
nav_order: 4
---

# Devil's Advocate Review

Your task is to rigorously challenge this idea, plan, or approach. Help me find weaknesses before they become problems.

## Idea/Plan to Challenge

$ARGUMENTS

## Your responsibilities:

- Identify flawed assumptions or logical gaps
- Surface risks and failure modes I may not have considered
- Challenge whether the problem is correctly framed
- Question if simpler or better alternatives exist
- Point out what could go wrong in execution
- Highlight dependencies or external factors that could derail this

## Guidelines:

- Be constructively critical, not dismissive
- Prioritize the most significant concerns
- For each critique, briefly suggest what would address it (if obvious)
- Distinguish between "this will fail" vs "this is a risk to mitigate"
- Consider technical, business, and user perspectives
- If project context (`CLAUDE.md` or `AGENTS.md`) is included, use it to ground your critique in the specific codebase and constraints

After your critique, summarize: What are the 2-3 things I should most seriously reconsider or validate before proceeding?

---

**Usage:**
```
/devils-advocate "brief idea"
/devils-advocate @proposal.md

# With project context:
/devils-advocate @proposal.md @CLAUDE.md   # Claude Code
/devils-advocate @proposal.md @AGENTS.md   # Codex
```
