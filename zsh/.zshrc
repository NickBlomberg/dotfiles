export LANG=en_US.UTF-8
export EDITOR="nvim"
export TERMINAL="iterm2"
export BROWSER="firefox"
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin"
export BAT_THEME="Dracula"
export CLICOLOR=1

# Aliases
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"

alias vi="nvim"
alias vim="nvim"
alias l="ls"
alias ls='ls -a --color'
alias cat="bat"

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Show/hide hidden files in Finder
if [[ $(uname) == "Darwin" ]]; then
  alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
  alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"
fi

# Create a new directory and enter it
function mkd() {
    mkdir -p "$@" && cd "$_";
}

# Git
alias g='git'
alias ga='git add'
alias gaa='git add --all'
alias gst='git status'
alias gb='git branch'
alias gc='git commit --verbose'
alias gcl='git clone --recurse-submodules'
alias gco='git checkout'
alias gd='git diff'
alias gdca='git diff --cached'
alias gp='git push'

source ~/.config/zsh/powerlevel10k/powerlevel10k.zsh-theme
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

autoload -Uz compinit && compinit

eval "$(/opt/homebrew/bin/brew shellenv)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
	source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
