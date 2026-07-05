# dotfiles

Managed with [chezmoi](https://www.chezmoi.io/). The `.ssh/config` is age-encrypted.

## Prerequisites

- `chezmoi` and `age` (installed via [macos-bootstrap](https://github.com/NickBlomberg/macos-bootstrap))
- The age identity file at `~/.config/chezmoi/key.txt` — **must be in place before applying**, or the encrypted ssh config cannot be decrypted

## Bootstrap

```
chezmoi init --apply --ssh NickBlomberg/dotfiles
```

## Shell/tmux/nvim plugins (interim)

Until plugin installation is converted to chezmoi `run_once_` scripts, run once from the source directory (`chezmoi cd`):

```
./setup.sh
```
