set -g theme_color_scheme terminal2

function fish_greeting
	echo ''
end

function cd
	builtin cd $argv
	ls -a
end

alias rm='rmtrash'
alias rmdir='rmdirtrash'
alias sudo='sudo '
alias code='code-insiders'
