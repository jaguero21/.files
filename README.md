# .files

Personal dotfiles for macOS.

## What's included

| Config | Source | Symlinked to |
|--------|--------|--------------|
| Neovim (LazyVim) | `nvim/` | `~/.config/nvim/` |
| Zsh | `zsh/.zshrc`, `zsh/.zprofile` | `~/.zshrc`, `~/.zprofile` |
| Git | `gitconfig`, `git/ignore` | `~/.gitconfig`, `~/.config/git/ignore` |
| GitHub CLI | `gh/config.yml` | `~/.config/gh/config.yml` |
| tmux | `tmux/tmux.conf` | `~/.config/tmux/tmux.conf` |

## Setup

### 1. Clone

```sh
git clone https://github.com/jaguero21/.files.git ~/.dotfiles
```

### 2. Run setup script

```sh
~/.dotfiles/setup.sh
```

This creates all symlinks. Safe to re-run.

### Prerequisites

- **TPM** — auto-bootstrapped by `tmux.conf` on first launch
