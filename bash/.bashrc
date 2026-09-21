# Interactive Shell
[[ $- == *i* ]] && iatest=1 || iatest=0

# Global Definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Bash Completion
if [[ $iatest -gt 0 ]]; then
	if [ -f /usr/share/bash-completion/bash_completion ]; then
		. /usr/share/bash-completion/bash_completion
	elif [ -f /etc/bash_completion ]; then
		. /etc/bash_completion
	fi
fi

# History
export HISTFILE="$HOME/.bash_history"
export HISTFILESIZE=1000
export HISTSIZE=500
export HISTTIMEFORMAT="%F %T "
export HISTCONTROL=ignoredups:ignorespace

# XDG Directories
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"

# Default Editor
if command -v nvim >/dev/null 2>&1; then
	export EDITOR=nvim
	export VISUAL=nvim
	alias n="nvim"
elif command -v vim >/dev/null 2>&1; then
	export EDITOR=vim
	export VISUAL=vim
else
	export EDITOR=vi
	export VISUAL=vi
fi

# Aliases
alias cp="cp -i"
alias mv="mv -i"
alias ..="cd .."
alias mkdir="mkdir -p"
alias ll="ls -lFh"
alias la="ls -lAFh"

# Interactive DNF
if command -v fzf >/dev/null 2>&1; then
	alias dnff="dnf --quiet list --available | cut -d ' ' -f 1 | grep '\.' | fzf --multi --preview 'dnf info {1}' --preview-window=down:75% | xargs -ro sudo dnf install"
	alias dnfr="dnf --quiet list --installed | cut -d ' ' -f 1 | grep '\.' | fzf --multi --preview 'dnf info {1}' --preview-window=down:75% | xargs -ro sudo dnf remove"
fi

# Disable Bell
if [[ $iatest -gt 0 ]]; then bind "set bell-style none"; fi

# Ignore Case on Auto-Completion
if [[ $iatest -gt 0 ]]; then bind "set completion-ignore-case on"; fi

# Show Auto-Completion List Automatically
if [[ $iatest -gt 0 ]]; then bind "set show-all-if-ambiguous on"; fi

# Starship
if [[ $iatest -gt 0 ]] && command -v starship >/dev/null 2>&1; then
	export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
	eval "$(starship init bash)"
fi

# TMUX
if command -v tmux >/dev/null 2>&1 && [[ $iatest -gt 0 ]] && [ -z "$TMUX" ]; then
	tmux new-session -A -s main
fi
