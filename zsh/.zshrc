# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ------------------------- Environment Variables -------------------------
export LANG=en_US.UTF-8
export TERM=xterm-256color
export BROWSER="firefox"
export EDITOR="nvim"
export CLICOLOR=1

# ---------------------------- Path Configuration ----------------------------
path=(
  $path
  /usr/local/bin
  /usr/bin
  /bin
  /usr/sbin
  /sbin
  /usr/local/sbin
)

# Remove duplicate entries and non-existent directories
typeset -U path
path=($^path(N-/))

export PATH

# --------------------------------- Aliases --------------------------------
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"

alias v="nvim"
alias vi="nvim"
alias vim="nvim"

alias l="ls"
alias ls="ls -a --color"

alias t="tmux"
alias e="exit"

# Enable aliases to be sudo’ed
alias sudo="sudo "

# Create a new directory and enter it
function mkd() {
  mkdir -p "$@" && cd "$_";
}

# Git
alias g="git"
alias ga="git add"
alias gaa="git add --all"
alias gst="git status"
alias gb="git branch"
alias gc="git commit --verbose"
alias gcl="git clone --recurse-submodules"
alias gco="git checkout"
alias gd="git diff"
alias gdca="git diff --cached"
alias gp="git push"

# --------------------------------- History --------------------------------
HISTSIZE=100000
SAVEHIST=$HISTSIZE
HISTFILE=~/.zsh_history
HISTDUP=erase

setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# -------------------------------- Sourcing --------------------------------
source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

if [[ $(uname) == "Darwin" ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

source <(fzf --zsh)

# ------------------------------- Completion -------------------------------
autoload -Uz compinit
compinit

if [[ $(uname) == "Darwin" ]]; then
  # Show/hide hidden files in Finder
  alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
  alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
