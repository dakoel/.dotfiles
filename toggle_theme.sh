#!/usr/bin/env bash

if [ "$#" -ne 1 ]; then
	echo "Usage: $0 {light|dark}"
	exit 1
fi

SOURCE_THEME_FILE="./alacritty/alacritty/alacritty_${1}.toml"
TARGET_THEME_FILE="./alacritty/alacritty/alacritty.toml"

rm $TARGET_THEME_FILE
cp $SOURCE_THEME_FILE $TARGET_THEME_FILE
