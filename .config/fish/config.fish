set -g theme_color_scheme terminal2
export SCREENDIR=$HOME/.screen

function fish_greeting
	#screenfetch
end

function cd
	builtin cd $argv
	ls -a
end

function activate
	set -lx PATH ./bin $PATH
	echo -n You are now enter venv : ; which pip
end

function deactivate
	set -lx PATH $PATH[2..-1]
	echo -n You are now leave venv : ; which pip
end

alias rm='rm -i'
alias python=python3
alias pip=pip3
