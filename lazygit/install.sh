#!/usr/bin/env bash

if [ -d ~/.config/lazygit ]; then
	echo "~/.config/lazygit already exists!"
	exit 1
fi

dir=$(dirname $(realpath $0))
ln -s $dir/lazygit ~/.config/lazygit
