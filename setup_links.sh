#!/bin/bash

echo "Setting up symbolic links to dot files"

ln -sf $HOME/dotfiles/.tmux.conf $HOME/.tmux.conf

ln -sf $HOME/dotfiles/.vimrc $HOME/.vimrc

ln -sf $HOME/dotfiles/.zshrc $HOME/.zshrc



directory_path="$HOME/.config"

if [ -d "$directory_path" ]; then
    echo "Directory already exists: $directory_path"
else

        echo "Creating Link"
ln -sf $HOME/dotfiles/.config $HOME/.config;
fi

echo "Done setting up dot files"
