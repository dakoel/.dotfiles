#!/usr/bin/env bash

if [ -f ~/.zshrc ]; then
	echo "~/.zshrc already exists!"
	exit 1
fi

#if [ -f ~/.p10k.zsh]; then
#	echo "~/.p10k.zsh already exists!"
#	exit 1
#fi

dir=$(dirname $(realpath $0))
ln -s $dir/.zshrc ~/.zshrc
ln -s $dir/.p10k.zsh ~/.p10k.zsh
