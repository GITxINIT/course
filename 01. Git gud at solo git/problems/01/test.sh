#!/usr/bin/env sh

cd sample
./prepare.sh &> /dev/null
git status --porcelain | \
	egrep -o "(M\s|\sM|\?\?)" | \
	sort --reverse | \
	uniq -c | \
	egrep -o "[1-9]" | \
	diff -u --color=always ../answer -
