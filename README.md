# Dotfiles

Personal configuration files and tools, managed via symlinks for easy setup across machines.

## Setup

<!-- markdownlint-disable MD029 -->

1. Clone the repo and run the install script to symlink configs:

```bash
./install.sh
```

2. Install dependencies for opencode:

```bash
cd ~/.config/opencode
bun i
```

3. Add the following to your `.zshrc` to load the opencode `.env` file:

```bash
set -a && source ~/.config/opencode/.env && set +a
```

<!-- markdownlint-enable MD029 -->
