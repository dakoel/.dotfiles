set local_config ~/.config/fish/config.local.fish
test -r $local_config; and source $local_config
set -e local_config

if status is-interactive
    if not command -q starship
        curl -sS https://starship.rs/install.sh | sh
    end

    set fish_greeting

    alias l="ls -l"
    alias la="ls -l -a"
    alias lg="lazygit"
    alias vim="nvim"
    alias tt="$HOME/.dotfiles/toggle_theme.sh"

    starship init fish | source
end
