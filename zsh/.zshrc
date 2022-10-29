export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="lukerandall"
plugins=(git zsh-vi-mode)

function zvm_config() {
  ZVM_LINE_INIT_MODE=$ZVM_MODE_INSERT
  ZVM_VI_INSERT_ESCAPE_BINDKEY=jk
  ZVM_NORMAL_MODE_CURSOR=$ZVM_CURSOR_BLINKING_BLOCK
  ZVM_INSERT_MODE_CURSOR=$ZVM_CURSOR_BLINKING_BEAM
}

source $ZSH/oh-my-zsh.sh

# Aliases
alias sudo="sudo "
alias vim="nvim"
alias reboot="systemctl reboot"
alias poweroff="systemctl poweroff"
alias shutdown="systemctl poweroff"
alias wifion="nmcli radio wifi on"
alias wifioff="nmcli radio wifi off"
