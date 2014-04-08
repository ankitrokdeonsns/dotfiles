#!/bin/bash

OLD_DOTFILES_DIR=$HOME/old_dotfiles
SHARED_FILES_DIR=$HOME/dotfiles/shared

FILES=`ls -A $SHARED_FILES_DIR`

for f in $FILES
do
    mv $HOME/.$f $OLD_DOTFILES_DIR
    ln -s $SHARED_FILES_DIR/$f $HOME/.$f
done
