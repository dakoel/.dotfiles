#!/usr/bin/env bash
dir=$(dirname $(realpath $0))

function write_theme_file() {
	local source_file="$1"
	local target_file="$2"

	rm -f "$target_file"
	cp "$source_file" "$target_file"
}

# Read current theme and prepare new theme
read -r current_theme <"${dir}/.theme"
theme=$(if [[ "$current_theme" == "dark" ]]; then echo "light"; else echo "dark"; fi)
gnome_theme=$(if [[ "$theme" == "light" ]]; then echo "default"; else echo "prefer-dark"; fi)
macos_theme=$(if [[ "$theme" == "light" ]]; then echo "false"; else echo "true"; fi)
echo "${theme}" >"${dir}/.theme"

# Set new theme for CLI applications
write_theme_file "${dir}/alacritty/alacritty_${theme}.toml" "${dir}/alacritty/alacritty.toml"
write_theme_file "${dir}/lazygit/config_${theme}.yml" "${dir}/lazygit/config.yml"
write_theme_file "${dir}/nvim/lua/plugins/colorscheme_${theme}" "${dir}/nvim/lua/plugins/colorscheme.lua"
write_theme_file "${dir}/tmux/tmux_${theme}.conf" "${dir}/tmux/.tmux.conf"
tmux source-file "${dir}/tmux/.tmux.conf"

# Set new theme for gnome
if command -v gsettings &>/dev/null; then
	gsettings set org.gnome.desktop.interface color-scheme ${gnome_theme}
fi

# Set new theme for macOS
if command -v osascript &>/dev/null; then
	osascript -e "tell application \"System Events\" to tell appearance preferences to set dark mode to ${macos_theme}"
fi
