#!/usr/bin/env bash

function write_theme_file() {
	local source_file="$1"
	local target_file="$2"

	rm -f "$target_file"
	cp "$source_file" "$target_file"
}

if [ "$#" -ne 1 ]; then
	echo "Usage: $0 {light|dark}"
	exit 1
fi

write_theme_file "./alacritty/alacritty/alacritty_${1}.toml" "./alacritty/alacritty/alacritty.toml"
write_theme_file "./lazygit/lazygit/config_${1}.yml" "./lazygit/lazygit/config.yml"