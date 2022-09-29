#!/usr/bin/env bash

if [ -f ~/.vimrc ]
then
    echo "~/.vimrc already exists!"
    exit 1
fi

dir=$(dirname $(realpath $0))
ln -s $dir/.vimrc ~/.vimrc
