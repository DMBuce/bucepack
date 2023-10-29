#!/bin/bash

# switch to git root
gitroot="$(git rev-parse --show-toplevel)" || exit
cd "$gitroot"

# define some data
latest="$(./bin/latest)"
dir="$gitroot/buce-data/recipes/cutting"
logtypes=(
	$(join -t _ \
		<(./bin/allitems | grep _log) \
		<(./bin/allitems | grep _planks) \
		| sed 's/_log.*_planks//'
	)
)
stemtypes=(
	$(join -t _ \
		<(./bin/allitems | grep _stem) \
		<(./bin/allitems | grep _planks) \
		| sed 's/_stem.*_planks//'
	)
)

# generate wood recipes
for t in "${logtypes[@]}"; do
	# wood cutting recipes
	cat <<-EOF | while read num output inputs
		1 ${t}_wood          ${t}_log
		1 ${t}_log           ${t}_wood
		1 stripped_${t}_log  ${t}_log ${t}_wood stripped_${t}_wood
		1 stripped_${t}_wood ${t}_log ${t}_wood stripped_${t}_log
		4 ${t}_planks        ${t}_log ${t}_wood stripped_${t}_log stripped_${t}_wood
		4 ${t}_stairs        ${t}_log ${t}_wood stripped_${t}_log stripped_${t}_wood
		8 ${t}_slab          ${t}_log ${t}_wood stripped_${t}_log stripped_${t}_wood
		1 ${t}_stairs        ${t}_planks
		2 ${t}_slab          ${t}_planks
	EOF
	do
		export num output inputs
		sempl - "$dir/wood/${num}x_${output}.recipe.json" <<-EOF
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

	# locomotive boat recipes
	num=5
	output="${t}_planks"
	inputs="${t}_boat ${t}_chest_boat"
	export num output inputs
	sempl - "buce-data/locomotive/recipes/${output}.recipe.json" <<-EOF
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

# generate mushroom recipes
for t in "${stemtypes[@]}"; do
	cat <<-EOF | while read num output inputs
		1 ${t}_hyphae          ${t}_stem
		1 ${t}_stem            ${t}_hyphae
		1 stripped_${t}_stem   ${t}_stem ${t}_hyphae stripped_${t}_hyphae
		1 stripped_${t}_hyphae ${t}_stem ${t}_hyphae stripped_${t}_stem
		4 ${t}_planks          ${t}_stem ${t}_hyphae stripped_${t}_stem stripped_${t}_hyphae
		4 ${t}_stairs          ${t}_stem ${t}_hyphae stripped_${t}_stem stripped_${t}_hyphae
		8 ${t}_slab            ${t}_stem ${t}_hyphae stripped_${t}_stem stripped_${t}_hyphae
		1 ${t}_stairs          ${t}_planks
		2 ${t}_slab            ${t}_planks
	EOF
	do
		export num output inputs
		sempl - "$dir/wood/${num}x_${output}.recipe.json" <<-EOF
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

# generate bamboo recipes
t=bamboo
cat <<-EOF | while read num output inputs
	1 stripped_${t}_block  ${t}_block
	1 ${t}_mosaic          ${t}_planks
	2 ${t}_planks          ${t}_block stripped_${t}_block
	2 ${t}_mosaic          ${t}_block stripped_${t}_block
	2 ${t}_stairs          ${t}_block stripped_${t}_block
	2 ${t}_mosaic_stairs   ${t}_block stripped_${t}_block
	4 ${t}_slab            ${t}_block stripped_${t}_block
	4 ${t}_mosaic_slab     ${t}_block stripped_${t}_block
	1 ${t}_stairs          ${t}_planks
	2 ${t}_slab            ${t}_planks
	1 ${t}_mosaic_stairs   ${t}_planks ${t}_mosaic
	2 ${t}_mosaic_slab     ${t}_planks ${t}_mosaic
EOF
do
	export num output inputs
	sempl - "$dir/wood/${num}x_${output}.recipe.json" <<-EOF
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

# generate recipe for 2 sticks
#export inputs="$(echo {oak,spruce,birch,jungle,acacia,dark_oak,crimson,warped}_planks)"
export inputs="bamboo ${logtypes[*]} ${stemtypes[*]}"
sempl - "$dir/wood/2x_sticks.recipe.json" <<-EOF
	{
	  "type": "minecraft:stonecutting",
	  "ingredient": [
	    { "item": "minecraft:{!printf '%s\\n' \$inputs | head -n-1}_planks" },
	    { "item": "minecraft:{!printf '%s\\n' \$inputs | tail -n1}_planks" }
	  ],
	  "result": "minecraft:stick",
	  "count": 2
	}
EOF

# generate recipe for 4 sticks
export inputs="bamboo_block stripped_bamboo_block"
sempl - "$dir/wood/4x_sticks.recipe.json" <<-EOF
	{
	  "type": "minecraft:stonecutting",
	  "ingredient": [
	    { "item": "minecraft:{!printf '%s\\n' \$inputs | head -n-1}" },
	    { "item": "minecraft:{!printf '%s\\n' \$inputs | tail -n1}" }
	  ],
	  "result": "minecraft:stick",
	  "count": 4
	}
EOF

# generate recipe for 8 sticks
inputs=""
for t in "${logtypes[@]}"; do
	for pre in '' stripped_; do
		for post in _log _wood; do
			inputs="$inputs ${pre}${t}${post}"
		done
	done
done
for t in "${stemtypes[@]}"; do
	for pre in '' stripped_; do
		for post in _stem _hyphae; do
			inputs="$inputs ${pre}${t}${post}"
		done
	done
done
export inputs
sempl - "$dir/wood/8x_sticks.recipe.json" <<-EOF
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

# generate smooth/cracked recipes
./bin/allitems \
	| grep -e^{smooth,cracked}_ \
	| grep -v -e_{slab,stairs}$ \
	| while read output
do
	num=1
	inputs="${output#cracked_}"
	inputs="${inputs#smooth_}"
	if [[ -f "$latest.jar/assets/minecraft/blockstates/${inputs}_block.json" ]]; then
		inputs="${inputs}_block"
	fi

	export num output inputs
	sempl - "$dir/smooth_cracked/${num}x_${output}.recipe.json" <<-EOF
		{
		  "type": "minecraft:stonecutting",
		  "ingredient": [
		    { "item": "{!jq -r .ingredient.item $latest.jar/data/minecraft/recipes/${inputs}_from_*_stonecutting.json 2>/dev/null}" },
		    { "item": "minecraft:$inputs" }
		  ],
		  "result": "minecraft:$output",
		  "count": $num
		}
	EOF

	# stairs
	if [[ -f "$latest.jar/assets/minecraft/blockstates/${output}_stairs.json" ]]; then
	(
	num=1
	inputs="$inputs"
	output="${output}_stairs"

	export num output inputs
	sempl - "$dir/smooth_cracked/${num}x_${output}.recipe.json" <<-EOF
		{
		  "type": "minecraft:stonecutting",
		  "ingredient": [
		    { "item": "minecraft:$inputs" }
		  ],
		  "result": "minecraft:$output",
		  "count": $num
		}
	EOF
	)
	fi

	# slabs
	if [[ -f "$latest.jar/assets/minecraft/blockstates/${output}_slab.json" ]]; then
	(
	num=2
	inputs="$inputs"
	output="${output}_slab"

	export num output inputs
	sempl - "$dir/smooth_cracked/${num}x_${output}.recipe.json" <<-EOF
		{
		  "type": "minecraft:stonecutting",
		  "ingredient": [
		    { "item": "minecraft:$inputs" }
		  ],
		  "result": "minecraft:$output",
		  "count": $num
		}
	EOF
	)
	fi
done

# generate cobbled recipes
#
# for each cobbled block
./bin/allitems \
	| grep ^cobble \
	| grep -v -e_{slab,stairs,wall}$ \
	| while read block
do
	input="${block#cobbled_}"
	input="${input#cobble}"

	# for each stonecutter recipe with the cobbled block as input
	for recipe in \
		"$latest.jar"/data/minecraft/recipes/*_from_"$block"_stonecutting.json
	do
		# generate a recipe with the uncobbled block as input
		num="$(jq -r .count "$recipe")"
		output="$(jq -r .result "$recipe" | sed 's/^minecraft://')"
		cp "$recipe" "$dir/smooth_cracked/${num}x_${output}.recipe.json"
		sed -i "/item/ s/$block/$input/g" "$dir/smooth_cracked/${num}x_${output}.recipe.json"
	done
done

# generate oddball conversion recipes
./bin/allitems \
	| sed -nE '/wall_sign$/d; s/_(slab|stairs|fence|fence_gate|wall|button|pressure_plate|door|trapdoor|sign)$//p' \
	| sort -u \
	| while read material
do
	blocks="$(./bin/allitems | grep -x -e"${material}"_{slab,stairs,fence,fence_gate,wall,button,pressure_plate,door,trapdoor,sign})"
	num=1
	for output in $blocks; do
		inputs="$(grep -vx "$output" <<< "$blocks")"
		[[ -z "$inputs" ]] && break

		export num output inputs
		sempl - "$dir/declutter/${num}x_${output}.recipe.json" <<-EOF
			{
			  "type": "minecraft:stonecutting",
			  "ingredient": [
			    { "item": "minecraft:{!printf '%s\\n' \$inputs | head -n-1}" },
			    { "item": "minecraft:{!printf '%s\\n' \$inputs | tail -n1}" }
			  ],
			  "result": "minecraft:$output",
			  "count": $num
			}
		EOF
	done
done

