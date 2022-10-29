#!/usr/bin/env bash

if [ -d ~/.config/kitty ]
then
    echo "~/.config/kitty already exists!"
    exit 1
fi

dir=$(dirname $(realpath $0))
ln -s $dir/kitty ~/.config/kitty
