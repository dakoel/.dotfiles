export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="lukerandall"
plugins=(git)
source $ZSH/oh-my-zsh.sh
bindkey -v
bindkey -M viins 'jk' vi-cmd-mode
bindkey "^R" history-incremental-search-backward

# Aliases
alias sudo="sudo "
alias vim="nvim"
alias reboot="systemctl reboot"
alias poweroff="systemctl poweroff"
alias shutdown="systemctl poweroff"
alias wifion="nmcli radio wifi on"
alias wifioff="nmcli radio wifi off"
