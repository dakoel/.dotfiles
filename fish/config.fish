function execute_script
    cd "$(dirname (status --current-filename))"
    ../scripts/$argv[1] $argv[2..]
    cd -
end

function configuration
    execute_script configuration.sh
end

function toggle_theme
    execute_script toggle_theme.sh $argv[1..]
end

function notes
    execute_script notes.sh
end

set local_config ~/.config/fish/config.local.fish
test -r $local_config; and source $local_config
set -e local_config

if status is-interactive
    if not command -q starship
        curl -sS https://starship.rs/install.sh | sh
    end

    set fish_greeting

    # ls aliases
    if command -q lsd
        alias ls="lsd -g"
    end
    alias l="ls -lh"
    alias la="ls -Alh"
    alias lt="ls --tree"

    # application aliases
    alias k="kubectl"
    alias lg="lazygit"
    alias m="multipass"
    alias vim="nvim"

    # other aliases
    alias c="configuration"
    alias tt="toggle_theme"
    alias n="notes"

    starship init fish | source
end
