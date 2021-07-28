#!/bin/bash

function gen_workspaces()
{
    i3-msg -t get_workspaces | tr ',' '\n' | grep "name" | sed 's/"name":"\(.*\)"/\1/g' | sort -n
}

case $1 in
	main | term | temp | game | discord | spotify | extra | remmina)
		i3-msg workspace "${1}" > /dev/null 2>&1
		;;
	*)
		gen_workspaces
		;;
esac		
