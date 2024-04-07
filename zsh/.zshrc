# Install Starship if not found
if ! which starship >/dev/null 2>&1; then
	curl -sS https://starship.rs/install.sh | sh
fi

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

# Aliases
alias l="ls -l"
alias la="ls -l -a"
alias lg="lazygit"

eval "$(starship init zsh)"
