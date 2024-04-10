#!/usr/bin/env bash

if [ -d ~/.config/fish ]; then
	echo "~/.config/fish already exists!"
	exit 1
fi

dir=$(dirname $(realpath $0))
ln -s $dir/fish ~/.config/fish
