---
layout: home
title: Home
nav_order: 1
---

# Agentic Coding Assistant Slash Commands

A collection of reusable slash commands for [Claude Code](https://docs.anthropic.com/en/docs/claude-code) and [OpenAI Codex](https://openai.com/index/openai-codex/) that promote thoughtful exploration, structured thinking, and collaborative problem-solving.

## Installation

### Claude Code

**Project-level** (recommended for team sharing):
```bash
mkdir -p .claude/commands
cp commands/*.md .claude/commands/
cp personas/*.md .claude/commands/
```

**User-global** (available across all your projects):
```bash
mkdir -p ~/.claude/commands
cp commands/*.md ~/.claude/commands/
cp personas/*.md ~/.claude/commands/
```

### OpenAI Codex

**Project-level**:
```bash
mkdir -p .codex/prompts
cp commands/*.md .codex/prompts/
cp personas/*.md .codex/prompts/
```

## Quick Reference

| Command | Purpose |
|---------|---------|
| [`/brainstorm`](commands/brainstorm) | Expansive ideation and exploration |
| [`/code-review`](commands/code-review) | Comprehensive code review with priority findings |
| [`/commit-per-file`](commands/commit-per-file) | Atomic git commits for each changed file |
| [`/devils-advocate`](commands/devils-advocate) | Challenge assumptions and find weaknesses |
| [`/document`](commands/document) | Update documentation after code changes |
| [`/execute`](commands/execute) | Implement planned work with progress tracking |
| [`/explore`](commands/explore) | Understand before implementing |
| [`/learning-opportunity`](commands/learning-opportunity) | Three-level concept explanation |
| [`/peer-review`](commands/peer-review) | Evaluate and verify peer review findings |
| [`/plan`](commands/plan) | Structured implementation planning |

## Philosophy

These commands emphasize:

1. **Exploration before implementation** - Understand the problem space fully before writing code
2. **Explicit over implicit** - Surface assumptions and ambiguities early
3. **Multiple perspectives** - Use different lenses (technical, user, business) to find blind spots
4. **Iterative refinement** - Go back and forth until clarity is achieved

## Using File References

All commands support the `@filename` syntax to inject file contents as input:

```bash
# Simple inline (okay for quick questions)
/brainstorm "how to handle rate limiting"

# File reference (better for real work)
/brainstorm @rate-limiting-ideas.md

# Multiple files with project context
/devils-advocate @proposal.md @CLAUDE.md
```

## Acknowledgments

This project was inspired by [Zevi's AI Development Workflow](https://shorthaired-billboard-f9a.notion.site/Zevi-s-AI-Development-Workflow-2c86baffbc90810fa63bd0ee8ecffce9). The baseline prompt content came from Zevi's prompts, refactored to suit my personal style of working.

## Contributing

PRs welcome! If you've crafted a slash command that improves your Claude Code workflow, consider sharing it.
