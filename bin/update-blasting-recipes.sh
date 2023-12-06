#!/bin/bash

# switch to git root
gitroot="$(git rev-parse --show-toplevel)" || exit
cd "$gitroot"

# define some data
latest="$(./bin/latest)" || exit
#dir="$gitroot/buce-data/recipes/blasting"

for file in "$latest.jar"/data/minecraft/recipes/*nugget_from_blasting*.json; do
	cp "$file" "${file#$latest.jar/}"
	#sed -i '
	#	/result/ s/"minecraft:.*/{\n    "item": &,\n    "count": 3\n  }/
	#' "${file#$latest.jar/}"
	sed -i '/result/ s/nugget/ingot/' "${file#$latest.jar/}"
done

