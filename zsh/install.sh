#!/usr/bin/env bash

if [ -f ~/.zshrc ]
then
    echo "~/.zshrc already exists!"
    exit 1
fi

dir=$(dirname $(realpath $0))
ln -s $dir/.zshrc ~/.zshrc
