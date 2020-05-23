# dotfiles
My personal dotfile configurations.

Based on the system described in an article on [Atlassian](https://www.atlassian.com/git/tutorials/dotfiles), 
with reference to an original post on [Hacker News](https://news.ycombinator.com/item?id=11070797).

## Installation
```bash
git clone --bare https://github.com/NickBlomberg/dotfiles.git $HOME/.dotfiles
git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $@

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

dotfiles checkout
dotfiles config status.showUntrackedFiles no
```
