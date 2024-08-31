#!/bin/bash

if ! [ -x "$(command -v git)" ]; then
  echo 'Error: git is not installed.' >&2
  exit 1
fi

if ! [ -x "$(command -v stow)" ]; then
  echo 'Error: stow is not installed.' >&2
  exit 1
fi

# Stow dotfiles
stow alacritty
stow git
stow hushlogin
stow nvim
stow ssh
stow vim
stow zsh

# Add ZSH Syntax Highliting plugin
if [[ ! -e ~/.zsh/zsh-syntax-highlighting ]]; then
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting
  source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# Add ZSH Autosuggestions plugin
if [[ ! -e ~/.zsh/zsh-autosuggestions ]]; then
  git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.zsh/zsh-autosuggestions
  source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

# Install Powerlevel10k
if [[ ! -e ~/.config/zsh/powerlevel10k/powerlevel10k.zsh-theme ]]; then
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.config/zsh/powerlevel10k
fi

#Install NVIM Plug manager
if [[ ! -e ~/.config/nvim/autoload/plug.vim ]]; then
  curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# Install NVIM plugins
nvim --headless +PlugInstall +qall
