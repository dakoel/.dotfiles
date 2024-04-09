# Install Starship if not found
if ! which starship >/dev/null 2>&1; then
	curl -sS https://starship.rs/install.sh | sh
fi

# History
export HISTFILE=~/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000

# Key bindings
bindkey -v
function handle-jk() {
 zle vi-repeat-search
 zle vi-cmd-mode
}
zle -N handle-jk
bindkey -M viins 'jk' handle-jk
bindkey '^R' history-incremental-search-backward

# Improve auto-complete
autoload -Uz compinit && compinit

# Aliases
alias l="ls -l"
alias la="ls -l -a"
alias lg="lazygit"
nvim() {
 if jobs | grep -q 'nvim'; then
    fg %nvim
 else
    command nvim "$@"
 fi
}

eval "$(starship init zsh)"
