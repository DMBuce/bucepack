#!/bin/bash

# switch to git root
gitroot="$(git rev-parse --show-toplevel)" || exit
cd "$gitroot"

# define some data
dir="$gitroot/buce-data/more_cutting"
logtypes=(
	$(join -t _ \
		<(./bin/allblocks | grep _log) \
		<(./bin/allblocks | grep _planks) \
		| sed 's/_log.*_planks//'
	)
)
stemtypes=(
	$(join -t _ \
		<(./bin/allblocks | grep _stem) \
		<(./bin/allblocks | grep _planks) \
		| sed 's/_stem.*_planks//'
	)
)

# generate wood recipes
for t in "${logtypes[@]}"; do
	cat <<-EOF | while read num output inputs
		1 ${t}_wood          ${t}_log
		1 stripped_${t}_log  ${t}_log
		1 stripped_${t}_wood ${t}_log ${t}_wood stripped_${t}_log
		4 ${t}_planks        ${t}_log ${t}_wood stripped_${t}_log stripped_${t}_wood
		4 ${t}_stairs        ${t}_log ${t}_wood stripped_${t}_log stripped_${t}_wood
		8 ${t}_slab          ${t}_log ${t}_wood stripped_${t}_log stripped_${t}_wood
		1 ${t}_stairs        ${t}_planks
		2 ${t}_slab          ${t}_planks
	EOF
	do
		export num output inputs
		sempl - "$dir/${output}_${num}.recipe.json" <<-EOF
			{
			  "type": "minecraft:stonecutting",
			  "ingredient": [
			    { "item": "minecraft:{!printf "%s\\n" \$inputs | head -n-1}" },
			    { "item": "minecraft:{!printf "%s\\n" \$inputs | tail -n1}" }
			  ],
			  "result": "minecraft:$output",
			  "count": $num
			} 
		EOF
	done
done

# generate mushroom recipes
for t in "${stemtypes[@]}"; do
	cat <<-EOF | while read num output inputs
		1 ${t}_hyphae          ${t}_stem
		1 stripped_${t}_stem   ${t}_stem
		1 stripped_${t}_hyphae ${t}_stem ${t}_hyphae stripped_${t}_stem
		4 ${t}_planks          ${t}_stem ${t}_hyphae stripped_${t}_stem stripped_${t}_hyphae
		4 ${t}_stairs          ${t}_stem ${t}_hyphae stripped_${t}_stem stripped_${t}_hyphae
		8 ${t}_slab            ${t}_stem ${t}_hyphae stripped_${t}_stem stripped_${t}_hyphae
		1 ${t}_stairs          ${t}_planks
		2 ${t}_slab            ${t}_planks
	EOF
	do
		export num output inputs
		sempl - "$dir/${output}_${num}.recipe.json" <<-EOF
			{
			  "type": "minecraft:stonecutting",
			  "ingredient": [
			    { "item": "minecraft:{!printf "%s\\n" \$inputs | head -n-1}" },
			    { "item": "minecraft:{!printf "%s\\n" \$inputs | tail -n1}" }
			  ],
			  "result": "minecraft:$output",
			  "count": $num
			} 
		EOF
	done
done

# generate recipe for 2 sticks
export inputs="$(echo {oak,spruce,birch,jungle,acacia,dark_oak,crimson,warped}_planks)"
sempl - "$dir/sticks_2.recipe.json" <<-EOF
	{
	  "type": "minecraft:stonecutting",
	  "ingredient": [
	    { "item": "minecraft:{!printf '%s\\n' \$inputs | head -n-1}" },
	    { "item": "minecraft:{!printf '%s\\n' \$inputs | tail -n1}" }
	  ],
	  "result": "minecraft:stick",
	  "count": 2
	}
EOF

# generate recipe for 8 sticks
export inputs="$(echo \
	{,stripped_}{oak,spruce,birch,jungle,acacia,dark_oak}_{log,wood} \
	{,stripped_}{crimson,warped}_{stem,hyphae}
)"
sempl - "$dir/sticks_8.recipe.json" <<-EOF
	{
	  "type": "minecraft:stonecutting",
	  "ingredient": [
	    { "item": "minecraft:{!printf '%s\\n' \$inputs | head -n-1}" },
	    { "item": "minecraft:{!printf '%s\\n' \$inputs | tail -n1}" }
	  ],
	  "result": "minecraft:stick",
	  "count": 8
	}
EOF

