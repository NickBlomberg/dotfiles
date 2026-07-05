#!/bin/bash

#Install NVIM Plug manager
if [[ ! -e ~/.config/nvim/autoload/plug.vim ]]; then
  curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# Install NVIM plugins
nvim --headless +PlugInstall +qall
