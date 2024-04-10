if status is-interactive
    if not command -q starship
        curl -sS https://starship.rs/install.sh | sh
    end

    set fish_greeting

    alias l="ls -l"
    alias la="ls -l -a"
    alias lg="lazygit"

    starship init fish | source
end
