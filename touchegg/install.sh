#!/usr/bin/env bash

if [ -d ~/.config/touchegg ]
then
    echo "~/.config/touchegg already exists!"
    exit 1
fi

dir=$(dirname $(realpath $0))
ln -s $dir/touchegg ~/.config/touchegg
