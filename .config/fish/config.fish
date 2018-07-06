set -g theme_color_scheme terminal2
export SCREENDIR=$HOME/.screen

function fish_greeting
	screenfetch
end

function cd
	builtin cd $argv
	ls -a
end

alias rm='rm -i'
alias python=python3
alias pip=pip3
