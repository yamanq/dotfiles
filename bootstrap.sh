#!/usr/bin/env bash

set -eux

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files=`ls -A ~/dotfiles/$1`       # list of files/folders to symlink in homedir

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv "$HOME/$file" "$olddir" 2> /dev/null || true
    echo "Creating symlink to $file in home directory."
    ln -s "$dir/${1}/$file" "$HOME/$file"
done
