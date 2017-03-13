#!/bin/bash
# Assumes dotfiles is in $HOME/dotfiles to use absolute paths
# This is required because of how symbolic links work

# Bash dotfiles
ln -s $HOME/dotfiles/.aliases $HOME/.aliases
ln -s $HOME/dotfiles/.bash_profile $HOME/.bash_profile
ln -s $HOME/dotfiles/.bashrc $HOME/.bashrc
ln -s $HOME/dotfiles/.inputrc $HOME/.inputrc
ln -s $HOME/dotfiles/.profile $HOME/.profile

# Git dotfiles
ln -s $HOME/dotfiles/.git-completion.bash $HOME/.git-completion.ash
ln -s $HOME/dotfiles/.gitconfig $HOME/.gitconfig
ln -s $HOME/dotfiles/.gitignore $HOME/.gitignore
ln -s $HOME/dotfiles/.gitmodules $HOME/.gitmodules

# zsh dotfiles
ln -s $HOME/dotfiles/.zshrc $HOME/.zshrc

# todo.sh dotfiles
ln -s $HOME/dotfiles/todo.cfg $HOME/todo.cfg

# hammerspoon dotfiles
ln -s $HOME/dotfiles/.hammerspoon $HOME/.hammerspoon

# emacs dotfiles
ln -s $HOME/dotfiles/.spacemacs.d $HOME/.spacemacs.d

# vim dotfiles
ln -s $HOME/dotfiles/.vimrc $HOME/.vimrc

# misc
ln -s $HOME/dotfiles/.eslintrc $HOME/.eslintrc
