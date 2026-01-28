---
layout: home
title: Home
nav_order: 1
---

# Agentic Coding Assistant Slash Commands

A collection of reusable slash commands for [Claude Code](https://docs.anthropic.com/en/docs/claude-code) and [OpenAI Codex](https://openai.com/index/openai-codex/) that promote thoughtful exploration, structured thinking, and collaborative problem-solving.

## Installation

### Quick Install (Recommended)

```bash
git clone https://github.com/codekunoichi/agentic-coding-assistant-slash-commands.git
cd agentic-coding-assistant-slash-commands
./install.sh
```

Interactive script that installs commands to your preferred location with Jekyll front matter stripped for clean prompts.

### Manual Install

**Claude Code (project-level):**
```bash
mkdir -p .claude/commands
cp commands/*.md .claude/commands/
cp personas/*.md .claude/commands/
```

**OpenAI Codex (project-level):**
```bash
mkdir -p .codex/prompts
cp commands/*.md .codex/prompts/
cp personas/*.md .codex/prompts/
```

## Quick Reference

| Command | Purpose |
|---------|---------|
| [`brainstorm`](commands/brainstorm) | Expansive ideation and exploration |
| [`code-review`](commands/code-review) | Comprehensive code review with priority findings |
| [`commit-per-file`](commands/commit-per-file) | Atomic git commits for each changed file |
| [`devils-advocate`](commands/devils-advocate) | Challenge assumptions and find weaknesses |
| [`document`](commands/document) | Update documentation after code changes |
| [`execute`](commands/execute) | Implement planned work with progress tracking |
| [`explore`](commands/explore) | Understand before implementing |
| [`learning-opportunity`](commands/learning-opportunity) | Three-level concept explanation |
| [`peer-review`](commands/peer-review) | Evaluate and verify peer review findings |
| [`plan`](commands/plan) | Structured implementation planning |

**Invocation syntax:**
- Claude Code: `/command-name`
- OpenAI Codex: `/prompts:command-name`

## Philosophy

These commands emphasize:

1. **Exploration before implementation** - Understand the problem space fully before writing code
2. **Explicit over implicit** - Surface assumptions and ambiguities early
3. **Multiple perspectives** - Use different lenses (technical, user, business) to find blind spots
4. **Iterative refinement** - Go back and forth until clarity is achieved

## Using File References

All commands support the `@filename` syntax to inject file contents as input:

**Claude Code:**
```bash
/brainstorm @rate-limiting-ideas.md
/devils-advocate @proposal.md @CLAUDE.md
```

**OpenAI Codex:**
```bash
/prompts:brainstorm @rate-limiting-ideas.md
/prompts:devils-advocate @proposal.md @AGENTS.md
```

## Acknowledgments

This project was inspired by [Zevi's AI Development Workflow](https://shorthaired-billboard-f9a.notion.site/Zevi-s-AI-Development-Workflow-2c86baffbc90810fa63bd0ee8ecffce9). The baseline prompt content came from Zevi's prompts, refactored to suit my personal style of working.

## Contributing

PRs welcome! If you've crafted a slash command that improves your Claude Code workflow, consider sharing it.
