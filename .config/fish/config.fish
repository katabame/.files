set -g theme_color_scheme terminal2

function fish_greeting
	echo ''
end

function cd
	builtin cd $argv
	ls -a
end

alias rm='rm -i'
alias python=python3
alias pip=pip3
