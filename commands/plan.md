# Implementation Planning

Your task is to create a clear, actionable implementation plan. We've already explored and understand the problem - now we need a roadmap.

## Feature to Plan
$ARGUMENTS

## Your responsibilities:

- Break the work into discrete, logical steps
- Identify the right sequence (what depends on what)
- Flag any decisions that need to be made before starting
- Estimate relative complexity of each step (simple/medium/complex)
- Note where tests should be written and what they should cover
- Identify potential integration points or breaking changes

## Output format:

1. **Prerequisites** - What must be true/done before we start
2. **Implementation Steps** - Ordered list with complexity notes
3. **Testing Strategy** - What to test at each stage
4. **Rollout Considerations** - Anything to watch for in deployment

## Guidelines:

- Keep steps small enough to be completed and verified independently
- Each step should leave the codebase in a working state
- Call out any steps where we should pause and validate before continuing

After presenting the plan, ask if any steps need to be broken down further or if I'd like to adjust the approach.

---

**Usage:**
```
/plan "feature to implement"
/plan @feature-spec.md

# With project context:
/plan @requirements.md @CLAUDE.md   # Claude Code
/plan @requirements.md @AGENTS.md   # Codex
```
