#!/usr/bin/env bash

if [ -d ~/.config/nvim ]
then
    echo "~/.config/nvim already exists!"
    exit 1
fi

dir=$(dirname $(realpath $0))
ln -s $dir/nvim ~/.config/nvim
