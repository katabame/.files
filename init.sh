#!/bin/bash


main()
{
	echo -n "Creating symbolic links... "
	ln -s -b ~/.files/.config/ ~/.config/
	ln -s -b ~/.files/.nanorc ~/.nanorc
	echo "Done"
	
	echo -n "Copying files... "
	cp ~/.files/.netrc.example ~/.netrc
	echo "Done"
	
	echo ".netrc file is created, please configure it with"
	echo "nano ~/.netrc"
}

main
