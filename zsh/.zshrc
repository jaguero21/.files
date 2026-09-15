# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Powerlevel10k
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
source $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme

export KEYTIMEOUT=1

# History
HISTSIZE=10000
SAVEHIST=10000
setopt HIST_IGNORE_DUPS
setopt SHARE_HISTORY

# Git aliases
alias gs="git status -s"
alias gl="git log --oneline --graph --decorate --all"
alias gp="git push"
alias gpl="git pull"

# Flutter shortcuts
alias frun="flutter run"
alias fbuild="flutter build ios"
alias fclean="flutter clean && flutter pub get"
alias fpub="flutter pub get"

# PATH and tools
eval "$(/opt/homebrew/bin/brew shellenv)"

# Plugins (from Homebrew)
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
