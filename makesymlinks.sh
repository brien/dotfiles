#!/bin/bash
#
# This scripts creates symlinks from the home directory to desired dotfiles in ~/dotfiles
#
# Based on a script by Micheal Smalley (github.com/michaeljsmalley)
#

# Variables

dir=~/dotfiles
olddir=~/dotfiles_old
files=".bashrc .vimrc .fonts.conf .Xresources .Xmodmap .xinitrc"

#

# create dotfiles_old in homedir
echo -n "Creating $olddir for backup of any existing dotfiles in ~ ..."
mkdir -p $olddir
echo "done"

# change to the dotfiles directory
echo -n "Changing to the $dir directory ..."
cd $dir
echo "done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks from the homedir to any files in the dotfiles directory.
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/$file
done
