#!/usr/bin/env bash

if [ -f ~/.tmux.conf ]
then
    echo "~/.tmux.conf already exists!"
    exit 1
fi

dir=$(dirname $(realpath $0))
ln -s $dir/.tmux.conf ~/.tmux.conf
