# XDG Base Directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

# Ruby
if command -v rbenv &> /dev/null; then
	eval "$(rbenv init - zsh)"
fi

if which ruby >/dev/null && which gem >/dev/null; then
	export GEM_HOME="$(ruby -r rubygems -e 'puts Gem.user_dir')"
	export PATH="$GEM_HOME/bin:$PATH"
fi

# Bat as MANPAGER
if command -v bat &> /dev/null; then
	export MANPAGER="sh -c 'sed -u -e \"s/\\x1B\[[0-9;]*m//g; s/.\\x08//g\" | bat -p -lman'"
fi

# Import .env file if it exists
if [[ -f "$HOME/.env" ]]; then
	set -o allexport; source "$HOME/.env"; set +o allexport
fi

# Cargo
. "$HOME/.cargo/env"
