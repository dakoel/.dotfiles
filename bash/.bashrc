# Install Starship if not found
if ! which starship >/dev/null 2>&1; then
	curl -sS https://starship.rs/install.sh | sh
fi

eval "$(starship init bash)"

set -o vi
bind '"jk": vi-movement-mode'

if [ -f ~/.bashenv ]; then
	. ~/.bashenv
fi
