## General rules

- Never run `pnpm/bun dev` - I'm always running dev server in background while working.
- When you need to search docs, use `context7` tools.
- If you are unsure how to do something, use `gh_grep` to search code examples from GitHub.
- When you need to search web, use `web-search-prime` tools.

## Typescript rules

- Never use `any` type when we are using Typescript.
- Use early returns whenever possible to make the code more readable
- Favor iteration and modularization over code duplication
- Avoid enums; use maps instead for better type safety and flexibility.

## React rules

- Minimize usage of `useEffect` - it is not effecient
- Minimize usage of HTML/CSS selectors, use ref instead
- Always favor Tailwind classes for styling HTML elements; use CSS only in unavoidable cases

## Naming Conventions

- Use camelCase for variable and function names (e.g., `isFetchingData`, `handleUserInput`)
- Use PascalCase for component names (e.g., `UserProfile`, `ChatScreen`)
- Directory names should be lowercase and hyphenated (e.g., `user-profile`, `chat-screen`).
