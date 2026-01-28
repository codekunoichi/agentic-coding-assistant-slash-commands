# Git Commit Per File

Generate clear, descriptive git commit messages for each changed file individually, then commit them one at a time.

## Workflow

1. **Analyze staged and unstaged changes** by running `git status` and `git diff`
2. **For each changed file**, examine the specific changes using `git diff <filename>`
3. **Generate a commit message** following the conventions below
4. **Present the proposed commits** for review before executing
5. **Execute commits one file at a time** after user approval

## Commit Message Format

```
<type>(<scope>): <subject>

<body>
```

### Type (required)
- `feat` - New feature or functionality
- `fix` - Bug fix
- `refactor` - Code restructuring without behavior change
- `docs` - Documentation changes
- `style` - Formatting, whitespace, missing semicolons (no code change)
- `test` - Adding or updating tests
- `chore` - Build process, dependencies, tooling
- `perf` - Performance improvement

### Scope (optional but encouraged)
The module, component, or area affected (e.g., `auth`, `api`, `ui`, `config`)

### Subject (required)
- Use imperative mood ("Add feature" not "Added feature")
- No period at the end
- Maximum 50 characters
- Be specific about what changed

### Body (when needed)
- Explain *why* the change was made, not just *what*
- Wrap at 72 characters
- Include context that helps future developers

## Examples

```
feat(auth): Add password reset flow via email

Implements forgot password functionality with secure token
generation and 24-hour expiration. Users receive reset link
at their registered email address.
```

```
fix(api): Handle null response from payment gateway

Prevents crash when gateway returns empty body during
timeout scenarios. Adds fallback error message for users.
```

```
refactor(utils): Extract date formatting into helper module
```

```
docs(readme): Update installation steps for Node 20
```

## Execution Steps

1. Unstage all files: `git reset HEAD`
2. For each file to commit:
   - Stage single file: `git add <filename>`
   - Commit with generated message: `git commit -m "<message>"`
3. Report summary of all commits made

## Important Rules

- **Never combine multiple files** into a single commit unless they are inextricably linked (e.g., a component and its test file created together)
- **Ask for confirmation** before executing any commits
- **Skip files** the user wants to exclude
- **Preserve untracked files** - don't auto-add new files without explicit approval
- If a file has changes that serve multiple purposes, suggest splitting the changes or ask the user how to categorize