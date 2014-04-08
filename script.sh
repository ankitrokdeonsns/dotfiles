#!/bin/bash

OLD_DOTFILES_DIR=~/old_dotfiles
mkdir -p $OLD_DOTFILES_DIR

SHARED_FILES_DIR=~/dotfiles/shared

FILES=`ls -A $SHARED_FILES_DIR`

for f in $FILES
do
    mv ~/.$f $OLD_DOTFILES_DIR
    ln -s $SHARED_FILES_DIR/$f ~/.$f
done
