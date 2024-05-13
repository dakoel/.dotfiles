#!/usr/bin/env bash

function write_theme_file() {
	local source_file="$1"
	local target_file="$2"

	rm -f "$target_file"
	cp "$source_file" "$target_file"
}

read -r current_theme <"./.theme"
theme=$(if [[ "$current_theme" == "dark" ]]; then echo "light"; else echo "dark"; fi)
echo "${theme}" >"./.theme"
write_theme_file "./alacritty/alacritty/alacritty_${theme}.toml" "./alacritty/alacritty/alacritty.toml"
write_theme_file "./lazygit/lazygit/config_${theme}.yml" "./lazygit/lazygit/config.yml"
write_theme_file "./neovim/nvim/lua/plugins/colorscheme_${theme}" "./neovim/nvim/lua/plugins/colorscheme.lua"
write_theme_file "./tmux/.tmux_${theme}.conf" "./tmux/.tmux.conf"
tmux source-file "./tmux/.tmux.conf"
