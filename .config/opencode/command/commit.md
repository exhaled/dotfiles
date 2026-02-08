---
description: Smart commit with beads context and conventional commit format
model: zai-coding-plan/glm-4.7
---

Generate a commit message based on staged changes and beads context.

## Safety Rules

1. **NEVER run `git commit` without explicit permission**
2. **ALWAYS show proposed commit messages for approval**
3. **If no files are staged, you have the right to stage relevant files before creating the commit message**

## Step 1: Gather Context

```bash
# What's staged?
git diff --cached --stat
git diff --cached --name-only

# What branch are we on?
git branch --show-current

# Recent commits for style reference
git log --oneline -5

# Current bead context (if any in-progress)
bd list --status in_progress --json 2>/dev/null | head -5
```

## Step 2: Analyze Changes

Read the staged diff to understand what changed:
```bash
git diff --cached
```

Categorize the change:
- `feat` - new feature
- `fix` - bug fix
- `refactor` - code restructuring without behavior change
- `docs` - documentation only
- `test` - adding/fixing tests
- `chore` - maintenance, deps, config
- `perf` - performance improvement
- `style` - formatting, whitespace

## Step 3: Identify Scope

Determine scope based on which folders contain most changes:
- Most edits in `apps/web` → scope is `web`
- Most edits in `apps/api` → scope is `api`
- Most edits in specific `packages/*` → use package name
- Changes across many folders → omit scope entirely

## Step 4: Check for Bead Reference

If there's an in-progress bead related to this work, note it for context but don't include it in the commit message:
```bash
bd list --status in_progress --json 2>/dev/null | head -5
```

## Step 5: Generate Commit Message

Format:
```
<type>(<scope>): <short description>

- Change 1
- Change 2
- Change 3
```

Rules:
- Subject line ≤ 72 chars
- Imperative mood ("add" not "added")
- No period at end of subject
- Bullet points describe specific changes made
- No detailed explanation paragraph - just the list

## Step 6: Present Commit Message

Present the commit message:

```markdown
## Proposed Commit

```
<type>(<scope>): <short description>

- Key change 1
- Key change 2  
- Key change 3
```

Does this look good? Reply "yes" to commit or provide your own message.
```

## Step 7: Execute (only with explicit confirmation)

**Wait for user confirmation before executing!**

Once user approves with "yes" or provides their own message:
```bash
git commit -m "<message>"
```

Never run the commit command without explicit permission.