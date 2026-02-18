# .files

Personal dotfiles for macOS.

## What's included

| Config | Source | Symlinked to |
|--------|--------|--------------|
| Neovim (LazyVim) | `nvim/` | `~/.config/nvim/` |
| Zsh | `zsh/.zshrc`, `zsh/.zprofile` | `~/.zshrc`, `~/.zprofile` |
| Git | `gitconfig` | `~/.gitconfig` |
| tmux | `tmux/tmux.conf.local` | `~/.config/tmux/tmux.conf.local` |
| Zed | `zed/settings.json` | `~/.config/zed/settings.json` |
| Zellij | `zellij/config.kdl` | `~/.config/zellij/config.kdl` |

## Setup

### 1. Clone

```sh
git clone https://github.com/jaguero21/.files.git ~/.dotfiles
```

### 2. Neovim

```sh
ln -s ~/.dotfiles/nvim ~/.config/nvim
```

### 3. Zsh

```sh
ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/.dotfiles/zsh/.zprofile ~/.zprofile
```

### 4. Git

```sh
ln -s ~/.dotfiles/gitconfig ~/.gitconfig
```

### 5. tmux

Requires [oh-my-tmux](https://github.com/gpakosz/.tmux). Follow its install instructions first, then:

```sh
ln -s ~/.dotfiles/tmux/tmux.conf.local ~/.config/tmux/tmux.conf.local
```

### 6. Zed

```sh
ln -s ~/.dotfiles/zed/settings.json ~/.config/zed/settings.json
```

### 7. Zellij

```sh
ln -s ~/.dotfiles/zellij/config.kdl ~/.config/zellij/config.kdl
```
