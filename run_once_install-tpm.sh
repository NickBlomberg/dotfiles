#!/bin/bash

# Install Tmux Plugin Manager
if [[ ! -e ~/.tmux/plugins/tpm ]]; then
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi
