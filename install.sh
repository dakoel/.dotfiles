#!/usr/bin/env bash
dir=$(dirname $(realpath $0))
initial_theme=light

function create_symlink() {
	local source="$1"
	local dest="$2"

	if [ -L "$dest" ]; then
		rm "$dest"
	fi

	if [ -e "$dest" ]; then
		rm -r "$dest"
	fi

	ln -s "$source" "$dest"
}

create_symlink $dir/alacritty ~/.config/alacritty
cp "${dir}/alacritty/alacritty_${initial_theme}.toml" "${dir}/alacritty/alacritty.toml"

create_symlink $dir/fish ~/.config/fish

create_symlink $dir/lazygit ~/.config/lazygit
cp "${dir}/lazygit/config_${initial_theme}.yml" "${dir}/lazygit/config.yml"

create_symlink $dir/nvim ~/.config/nvim
cp "${dir}/nvim/lua/plugins/colorscheme_${initial_theme}" "${dir}/nvim/lua/plugins/colorscheme.lua"

create_symlink $dir/tmux/.tmux.conf ~/.tmux.conf
cp $dir/tmux/tmux_light.conf $dir/tmux/.tmux.conf

echo "${initial_theme}" >"${dir}/.theme"
