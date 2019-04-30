#!/usr/bin/env bash

cd messy

readonly messages=('added files 1, 2, 3' 'files 4, 5, 6 added' '7, 8, 9 are in')
for i in "${!messages[@]}"; do
	sha1=$(git log --format=%h --grep="^${messages[$i]}$")
	if [[ $sha1 != "" ]]; then
		echo "Found commit $sha1 with message '${messages[$i]}'"
	else
		echo "Message '$msg' not found"
		exit 1
	fi

	added_files="$(git show --format="" --name-status $sha1)"
	added_count=$(wc -l <<< $added_files)
	if [[ $added_count != 3 ]]; then
		echo "Too much changes in commit $sha1"
	fi
	for j in $(seq 1 3); do
		name=$(($i * 3 + $j)).txt
		filename=$(grep $name <<< $added_files)
		echo "Found added file $filename"
	done

	echo
done

echo "All good!"
