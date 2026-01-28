# Agentic Coding Assistant Slash Commands

A collection of reusable slash commands for [Claude Code](https://docs.anthropic.com/en/docs/claude-code) and [OpenAI Codex](https://openai.com/index/openai-codex/) that promote thoughtful exploration, structured thinking, and collaborative problem-solving.

## Installation

### Quick Install (Recommended)

```bash
./install.sh
```

Interactive script that installs commands to your preferred location with Jekyll front matter stripped for clean prompts.

### Manual Install

<details>
<summary>Claude Code</summary>

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
</details>

<details>
<summary>OpenAI Codex</summary>

**Project-level**:
```bash
mkdir -p .codex/prompts
cp commands/*.md .codex/prompts/
cp personas/*.md .codex/prompts/
```
</details>

## Commands

| Command | Purpose |
|---------|---------|
| `brainstorm` | Expansive ideation and exploration |
| `code-review` | Comprehensive code review with priority findings |
| `commit-per-file` | Atomic git commits for each changed file |
| `devils-advocate` | Challenge assumptions and find weaknesses |
| `document` | Update documentation after code changes |
| `execute` | Implement planned work with progress tracking |
| `explore` | Understand before implementing |
| `learning-opportunity` | Three-level concept explanation for learning |
| `peer-review` | Evaluate and verify peer review findings |
| `plan` | Structured implementation planning |

## Personas

The `personas/` directory contains specialized agent prompts based on the Constitutional AI methodology - using the AI as different expert roles for collaborative problem-solving.

| Persona | Role |
|---------|------|
| `product-owner` | Requirements, user stories, acceptance criteria |
| `software-engineer` | Architecture, implementation, code quality |
| `sdet` | Testing strategy, edge cases, quality assurance |

## Usage

**Claude Code:**
```bash
/brainstorm @idea.md
/code-review src/components/
/plan @requirements.md
```

**OpenAI Codex:**
```bash
/prompts:brainstorm @idea.md
/prompts:code-review src/components/
/prompts:plan @requirements.md
```

## Using File References

All commands support the `@filename` syntax to inject file contents as input. This is **strongly recommended** over inline arguments for anything non-trivial.

**Claude Code:**
```bash
# Simple inline
/brainstorm "how to handle rate limiting"

# File reference (recommended)
/brainstorm @rate-limiting-ideas.md

# With project context
/devils-advocate @proposal.md @CLAUDE.md
```

**OpenAI Codex:**
```bash
# Simple inline
/prompts:brainstorm "how to handle rate limiting"

# File reference (recommended)
/prompts:brainstorm @rate-limiting-ideas.md

# With project context
/prompts:devils-advocate @proposal.md @AGENTS.md
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
