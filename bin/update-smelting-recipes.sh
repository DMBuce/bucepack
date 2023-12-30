#!/bin/bash

# switch to git root
gitroot="$(git rev-parse --show-toplevel)" || exit
cd "$gitroot"

# define some data
latest="$(./bin/latest)" || exit
#dir="$gitroot/buce-data/recipes/blasting"

# plentiful blasting
for file in "$latest.jar"/data/minecraft/recipes/*nugget_from_blasting*.json; do
	cp "$file" "${file#$latest.jar/}"
	#sed -i '
	#	/result/ s/"minecraft:.*/{\n    "item": &,\n    "count": 3\n  }/
	#' "${file#$latest.jar/}"
	sed -i '/result/ s/nugget/ingot/' "${file#$latest.jar/}"
done

# brick ovens
while read file; do
	if [[ $file == *from_smelting* ]]; then
		[[ -f "${file//smelting/blasting}" ]] && continue
		[[ -f "${file//smelting/smoking}" ]] && continue
	else
		[[ -f "${file%.json}_from_smoking.json" ]] && continue
	fi
	#echo "$file"

	# smoker
	new="${file#$latest.jar/}"
	new="${new//smelting/smoking}"
	[[ $new != *from_smoking* ]] && new="${new%.json}_from_smoking.json"
	cp "$file" "$new"
	sed -i '
		/type/ s/smelting/smoking/
		/cookingtime/ s/200/100/
	' "$new"

	# campfire
	new="${file#$latest.jar/}"
	new="${new//smelting/campfire_cooking}"
	[[ $new != *from_campfire_cooking* ]] && new="${new%.json}_from_campfire_cooking.json"
	cp "$file" "$new"
	sed -i '
		/type/ s/smelting/campfire_cooking/
		/cookingtime/ s/200/600/
	' "$new"
done < <(grep minecraft:smelting "$latest.jar"/data/minecraft/recipes/*.json -l)

