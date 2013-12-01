#!/bin/bash

OLD_DOTFILES_DIR=~/old_dotfiles
mkdir -p $OLD_DOTFILES_DIR

DOTFILES_DIR=~/dotfiles

FILES=`ls -A $DOTFILES_DIR`

for f in $FILES
do
    mv ~/.$f $OLD_DOTFILES_DIR
    ln -s $DOTFILES_DIR/$f ~/.$f
done
