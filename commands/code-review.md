# Code Review

Your task is to perform a comprehensive code review on the specified file or folder. Be thorough but concise.

## Target

$ARGUMENTS

## Check For:

- **Logging** - No console.log statements, uses proper logger with context
- **Error Handling** - Try-catch for async, centralized handlers, helpful messages
- **TypeScript** - No `any` types, proper interfaces, no @ts-ignore
- **Production Readiness** - No debug statements, no TODOs, no hardcoded secrets
- **React/Hooks** - Effects have cleanup, dependencies complete, no infinite loops
- **Performance** - No unnecessary re-renders, expensive calcs memoized
- **Security** - Auth checked, inputs validated, RLS policies in place
- **Architecture** - Follows existing patterns, code in correct directory

## Guidelines:

- Review each file systematically
- Group findings by file for readability
- Prioritize issues that impact production
- Suggest specific fixes where possible
- Note positive patterns worth preserving

## Output Format

Provide findings in a table format, one row per file:

| File | Review Comments | Priority |
|------|-----------------|----------|
| `path/to/file.ts` | Issue description with line reference. Suggested fix if applicable. | High |
| `path/to/another.ts` | Multiple issues separated by semicolons; Issue 2 description | Medium |
| `path/to/clean.ts` | No issues found | - |

### Priority Levels:
- **High** - Security vulnerabilities, data loss risks, crashes, bugs
- **Medium** - Performance issues, code quality, maintainability concerns
- **Low** - Style improvements, minor optimizations

### Summary

After the table, provide:
- Total files reviewed
- Count by priority (High/Medium/Low)
- Top 3 issues to address first

---

**Usage:**
```
/code-review src/components/
/code-review src/utils/auth.ts
/code-review src/
```