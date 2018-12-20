#!/usr/bin/env bash

readonly DIR=$(dirname "$0")

diff -u --color=always "$DIR/.answers/$1" -

if [[ $? == 0 ]]; then
	echo "Great success in problem $1!"
else
	echo Your output differs from the answer!
	exit 1
fi
