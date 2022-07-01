export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="lukerandall"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Aliases
alias vim="nvim"
alias reboot="systemctl reboot"
alias poweroff="systemctl poweroff"
alias shutdown="systemctl poweroff"
