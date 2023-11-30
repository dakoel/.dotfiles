# Install oh-my-zsh if not found
if [ ! -d "$HOME/.oh-my-zsh" ]
then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Install plugins
function install_plugin() {
  plugin_directory="$HOME/.oh-my-zsh/plugins/$2"
  if [ ! -d $plugin_directory ]
  then
    git clone https://github.com/$1/$2 $plugin_directory
  fi
}
install_plugin jeffreytse zsh-vi-mode

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="lukerandall"
plugins=(git zsh-vi-mode fzf)

function zvm_config() {
  ZVM_LINE_INIT_MODE=$ZVM_MODE_INSERT
  ZVM_VI_INSERT_ESCAPE_BINDKEY=jk
  ZVM_NORMAL_MODE_CURSOR=$ZVM_CURSOR_BLINKING_BLOCK
  ZVM_INSERT_MODE_CURSOR=$ZVM_CURSOR_BLINKING_BEAM
}

# Aliases
alias sudo="sudo "
alias reboot="systemctl reboot"
alias poweroff="systemctl poweroff"
alias shutdown="systemctl poweroff"

source $ZSH/oh-my-zsh.sh
