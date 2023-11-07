#!/bin/bash

# Stow dotfiles
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

#Install NVIM Plug manager
if [[ ! -e ~/.config/nvim/autoload/plug.vim ]]; then
  curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# Install NVIM plugins
nvim --headless +PlugInstall +qall
