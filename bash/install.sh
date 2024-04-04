#!/usr/bin/env bash

if [ -f ~/.bashrc ]; then
	echo "~/.bashrc already exists!"
	exit 1
fi

dir=$(dirname $(realpath $0))
ln -s $dir/.bashrc ~/.bashrc
