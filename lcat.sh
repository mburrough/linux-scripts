#!/bin/bash

# "lcat" - A stupid script that will cat (actually 'less') when passed a file 
# as an arg, otherwise it will ls. Helpful when you are quickly browsing 
# around the filesystem and want to keep using your bash history any not have 
# to switch between dir listing and file listing.


if [ $# -eq 0 ]; then
	ls --color .
else
	if [ $# -gt 1 ]; then
		ls --color "$@"
	else
		if [ -d "${1}" ] ; then
			ls --color $1
		else
			if [ -f "${1}" ]; then
				less $1		    
			else
				ls --color "$@"
			fi
		fi
	fi
fi
