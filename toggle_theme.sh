#!/usr/bin/env bash
dir=$(dirname $(realpath $0))

function write_theme_file() {
	local source_file="$1"
	local target_file="$2"

	rm -f "$target_file"
	cp "$source_file" "$target_file"
}

read -r current_theme <"./.theme"
theme=$(if [[ "$current_theme" == "dark" ]]; then echo "light"; else echo "dark"; fi)
echo "${theme}" >"${dir}/.theme"
write_theme_file "${dir}/alacritty/alacritty_${theme}.toml" "${dir}/alacritty/alacritty.toml"
write_theme_file "${dir}/lazygit/config_${theme}.yml" "${dir}/lazygit/config.yml"
write_theme_file "${dir}/nvim/lua/plugins/colorscheme_${theme}" "${dir}/nvim/lua/plugins/colorscheme.lua"
write_theme_file "${dir}/tmux/tmux_${theme}.conf" "${dir}/tmux/.tmux.conf"
tmux source-file "${dir}/tmux/.tmux.conf"
