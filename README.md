# dotfiles

Managed with [chezmoi](https://www.chezmoi.io/). The `.ssh/config` is age-encrypted.

## Prerequisites

- `chezmoi` and `age` (installed via [macos-bootstrap](https://github.com/NickBlomberg/macos-bootstrap))
- The age identity file at `~/.config/chezmoi/key.txt` — **must be in place before applying**, or the encrypted ssh config cannot be decrypted

## Bootstrap

```
chezmoi init --apply --ssh NickBlomberg/dotfiles
```

## Plugins

ZSH plugins (syntax-highlighting, autosuggestions, powerlevel10k), TPM, and Neovim plugins (vim-plug) are all installed automatically on first `chezmoi apply` via `run_once_` scripts.
