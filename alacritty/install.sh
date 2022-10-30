#!/usr/bin/env bash

if [ -d ~/.config/alacritty ]
then
    echo "~/.config/alacritty already exists!"
    exit 1
fi

dir=$(dirname $(realpath $0))
ln -s $dir/alacritty ~/.config/alacritty
