local brew_path="/opt/homebrew/bin"
local brew_opt_path="/opt/homebrew/opt"
local nvm_path="$HOME/.nvm"

export PATH="${brew_path}:${PATH}"
export NVM_DIR="${nvm_path}"

[ -s "${brew_opt_path}/nvm/nvm.sh" ] && . "${brew_opt_path}/nvm/nvm.sh"  # This loads nvm
[ -s "${brew_opt_path}/nvm/etc/bash_completion.d/nvm" ] && . "${brew_opt_path}/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

export PATH="$PATH:/Users/piotr/dev/flutter/bin"
export PATH="$PATH:/usr/local/bin"

export DENO_INSTALL="/Users/piotr/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

PROMPT="%B%F{cyan}@%n%f%b %* %B%1~%b %# "

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export XDG_CONFIG_HOME="$HOME/.config/custom"

localip() {
	ifconfig | grep "inet " | grep -Fv 127.0.0.1 | awk '{print $2}'
}

grh () {
	if [[ "$1" = 'here' ]]
	then
		branch=$(git symbolic-ref --short HEAD)
		read -s -k "?reset to origin/$branch?"$'\n'
		git reset --hard "origin/$branch"
	else
		read -s -k "?reset to origin/$1?"$'\n'
		git reset --hard "origin/$1"
	fi
}
