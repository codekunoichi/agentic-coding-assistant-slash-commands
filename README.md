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

## Commands

| Command | Purpose | Usage |
|---------|---------|-------|
| `/brainstorm` | Expansive ideation and exploration | `/brainstorm @idea.md` |
| `/explore` | Understand before implementing | `/explore @feature-spec.md` |
| `/devils-advocate` | Challenge assumptions and find weaknesses | `/devils-advocate @proposal.md` |
| `/plan` | Structured implementation planning | `/plan @requirements.md` |

## Personas

The `personas/` directory contains specialized agent prompts based on the Constitutional AI methodology - using the AI as different expert roles for collaborative problem-solving.

| Persona | Role | Usage |
|---------|------|-------|
| `/product-owner` | Requirements, user stories, acceptance criteria | `/product-owner @prd.md` |
| `/software-engineer` | Architecture, implementation, code quality | `/software-engineer @design.md` |
| `/sdet` | Testing strategy, edge cases, quality assurance | `/sdet @feature-spec.md` |

## Using File References

All commands support the `@filename` syntax to inject file contents as input. This is **strongly recommended** over inline arguments for anything non-trivial.

```bash
# Simple inline (okay for quick questions)
/brainstorm "how to handle rate limiting"

# File reference (better for real work)
/brainstorm @rate-limiting-ideas.md

# Multiple files with project context (best for grounded analysis)
# Claude Code:
/devils-advocate @proposal.md @CLAUDE.md

# Codex:
/devils-advocate @proposal.md @AGENTS.md
```

**Why use file references?**
- Complex ideas can't be expressed in one line
- Your input becomes version-controlled documentation
- You can include project context (`CLAUDE.md` or `AGENTS.md`) for grounded analysis
- Iterate on the input separately from the conversation

## Philosophy

These commands emphasize:

1. **Exploration before implementation** - Understand the problem space fully before writing code
2. **Explicit over implicit** - Surface assumptions and ambiguities early
3. **Multiple perspectives** - Use different lenses (technical, user, business) to find blind spots
4. **Iterative refinement** - Go back and forth until clarity is achieved

## Customization

Each command uses `$ARGUMENTS` as a placeholder for user input. Feel free to fork and adapt these prompts to your workflow.

## Acknowledgments

This project was inspired by [Zevi's AI Development Workflow](https://shorthaired-billboard-f9a.notion.site/Zevi-s-AI-Development-Workflow-2c86baffbc90810fa63bd0ee8ecffce9). The baseline prompt content came from Zevi's prompts, refactored to suit my personal style of working.

## Contributing

PRs welcome! If you've crafted a slash command that improves your Claude Code workflow, consider sharing it.

## License

MIT
