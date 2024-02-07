# Install oh-my-zsh if not found
if [[ ! -d "$HOME/.oh-my-zsh" ]]
then
  export RUNZSH=no
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Install plugins/themes
function install() {
  installation_directory="$HOME/.oh-my-zsh/$3/$2"
  if [[ ! -d $installation_directory ]]
  then
    git clone https://github.com/$1/$2 $installation_directory
  fi
}

install romkatv powerlevel10k themes
install jeffreytse zsh-vi-mode plugins

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
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
alias lg="lazygit"

source $ZSH/oh-my-zsh.sh
source ~/.p10k.zsh
