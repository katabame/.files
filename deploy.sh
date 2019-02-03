#!/bin/bash

check_success()
{
	if [ "$?" -ne "0" ]; then
		echo -e "\033[31m✘\033[0m"
		exit 1
	fi
	echo -e "\033[32m✔\033[0m"
}

# ------ #

deploy_directories()
{
	dirs=`find ${homedir}/.files/ -maxdepth 1 -type d -not -name '.git'`
	
	for dir in ${dirs};
	do
		ln -s -b ${dir} ${homedir}/`basename ${dir}`/
	done
}

deploy_files()
{
	files=`find ${homedir}/.files/ -maxdepth 1 -type f -not -name '*.sh' -not -name 'index.html' -not -name 'CNAME'`

	for file in ${files};
	do
		ln -s -b ${file} ${homedir}/`basename ${file}`
	done
}

# ------ #

main()
{
	homedir=`eval echo ~${SUDO_USER:-$(whoami)}`

	echo -n -e "\033[37mDeploying dotfiles directories...\033[0m "
	deploy_directories
	check_success

	echo -n -e "\033[37mDeploying dotfiles files...\033[0m "
	deploy_files
	check_success
}

main