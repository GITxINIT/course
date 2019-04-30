#!/usr/bin/env bash

# run this script in your shell, it will create a git repo
# some files and add some of them to the index
mkdir -p messy
cd messy
git init

echo "# kek" >> README.md
git commit -m "Initial commit :)"

for i in $(seq 1 9); do
	echo "some content $i" > "$i.txt"
done

for i in $(seq 1 2 9); do
	git add "$i.txt";
done
