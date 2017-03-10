#!/bin/bash

# Bash dotfiles
ln -s .aliases $HOME/.
ln -s .bash_profile $HOME/.
ln -s .bashrc $HOME/.
ln -s .inputrc $HOME/.
ln -s .profile $HOME/.

# Git dotfiles
ln -s .git-completion.bash $HOME/.
ln -s .gitconfig $HOME/.
ln -s .gitignore $HOME/.
ln -s .gitmodules $HOME/.

# zsh dotfiles
ln -s .zshrc $HOME/.

# todo.sh dotfiles
ln -s todo.cfg $HOME/.

# hammerspoon dotfiles
ln -s .hammerspoon $HOME/.

# emacs dotfiles
ln -s .spacemacs.d $HOME/.

# vim dotfiles
ln -s .vimrc

# misc
ln -s .eslintrc $HOME/.
