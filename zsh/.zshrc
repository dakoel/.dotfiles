# Install oh-my-zsh if not found
if [ ! -d "$HOME/.oh-my-zsh" ]
then
	sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="lukerandall"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Aliases
alias start_tmux="~/.dotfiles/scripts/start_tmux.sh"
