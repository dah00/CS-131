#!/bin/bash

if [ $# -lt 2 ]; then
	echo "insufficient number of arguments";
	exit 1
fi

# Assumming that there is 200 lines in the amazon file so 
# x% sampling of all lines = x * 2
lines=$(( $1 * 2))
head -n "$lines" "$2"
