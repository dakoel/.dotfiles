#!/usr/bin/env bash

if [ -d "~/Library/Application Support/lazygit" ]; then
	echo "~/Library/Application Support/lazygit already exists!"
	exit 1
fi

dir=$(dirname $(realpath $0))
ln -s $dir/lazygit ~/Library/Application\ Support/lazygit
