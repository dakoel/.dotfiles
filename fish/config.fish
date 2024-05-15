set local_config ~/.config/fish/config.local.fish
test -r $local_config; and source $local_config
set -e local_config

if status is-interactive
    if not command -q starship
        curl -sS https://starship.rs/install.sh | sh
    end

    set fish_greeting

    if command -q lsd
        alias l="lsd -lh"
        alias la="lsd -Alh"
        alias ls="lsd"
    else
        alias l="ls -lh"
        alias la="ls -Alh"
    end

    alias lg="lazygit"
    alias vim="nvim"

    alias c="configuration"
    alias tt="toggle_theme"
    alias n="notes"

    function configuration
        execute_script configuration.sh
    end

    function toggle_theme
        execute_script toggle_theme.sh
    end

    function notes
        execute_script notes.sh
    end

    function execute_script
        cd "$(dirname (status --current-filename))"
        ../scripts/$argv[1]
        cd -
    end

    starship init fish | source
end
