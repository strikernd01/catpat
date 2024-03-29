#!/usr/bin/bash

n=0
default_file="./.pat"
while getopts "n:f:" opt;
do
	case $opt in
		n)
			n=$OPTARG
		;;
		
		f)
			file=$OPTARG
		;;
	esac
done

if [[ -v file ]]; then
	if [[ -f $file ]]; then
		if [[ $n -ne 0 ]]; then
			cat ~/"$file" | grep -v "#" | grep . |  sed -n "$((n*2))p" > >(xclip -selection clipboard -i)
		else
			cat ~/"$file" | tail -n 1 > >(xclip -selection clipboard -i)
		fi
	else
		echo "incorrect filename provided"
	fi
else
	if [[ $n -ne 0 ]]; then
		cat "$default_file" | grep -v "#" | grep . |  sed -n "$((n*2))p" > >(xclip -selection clipboard -i)
	else
		cat "$default_file" | grep -v "#" | grep . | tail -n 1 > >(xclip -selection clipboard -i)
	fi
				
fi
