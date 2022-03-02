# Install oh-my-zsh if not found
if [ ! -d "$HOME/.oh-my-zsh" ]
then
	sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

export FZF_DEFAULT_COMMAND="find -L ."
