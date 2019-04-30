#!/usr/bin/env bash

cd messy

readonly EXPECTED_MESSAGES=('added files 1, 2, 3' 'files 4, 5, 6 added' '7, 8, 9 are in')
for msg in "${EXPECTED_MESSAGES[@]}"; do
	echo "$msg a"
done
