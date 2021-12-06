#!/bin/bash

gitroot="$(git rev-parse --show-toplevel)" || exit
dir="$gitroot/bucepack-data/more_cutting"
logtypes='oak spruce birch jungle acacia dark_oak'
stemtypes='crimson warped'

# generate wood recipes
for logtype in $logtypes; do
	while read num output inputs; do
		file="$dir/${output//%s/$logtype}_${num}.recipe.json"
		echo '{
  "type": "minecraft:stonecutting",
  "ingredient": [' > "$file"
		for input in $inputs; do
			echo "    { \"item\": \"minecraft:${input//%s/$logtype}\" },"
		done | sed '$s/,$//' >> "$file"
		echo "  ],
  \"result\": \"minecraft:${output//%s/$logtype}\",
  \"count\": $num
}" >> "$file"
		
	done <<-EOF
		1 %s_wood          %s_log
		1 stripped_%s_log  %s_log
		1 stripped_%s_wood %s_log %s_wood stripped_%s_log
		4 %s_planks        %s_log %s_wood stripped_%s_log stripped_%s_wood
		4 %s_stairs        %s_log %s_wood stripped_%s_log stripped_%s_wood
		8 %s_slab          %s_log %s_wood stripped_%s_log stripped_%s_wood
		1 %s_stairs        %s_planks
		2 %s_slab          %s_planks
	EOF
done

# generate mushroom recipes
for stemtype in $stemtypes; do
	while read num output inputs; do
		file="$dir/${output//%s/$stemtype}_${num}.recipe.json"
		echo '{
  "type": "minecraft:stonecutting",
  "ingredient": [' > "$file"
		for input in $inputs; do
			echo "    { \"item\": \"minecraft:${input//%s/$stemtype}\" },"
		done | sed '$s/,$//' >> "$file"
		echo "  ],
  \"result\": \"minecraft:${output//%s/$stemtype}\",
  \"count\": $num
}" >> "$file"
		
	done <<-EOF
		1 %s_hyphae          %s_stem
		1 stripped_%s_stem   %s_stem
		1 stripped_%s_hyphae %s_stem %s_hyphae stripped_%s_stem
		4 %s_planks          %s_stem %s_hyphae stripped_%s_stem stripped_%s_hyphae
		4 %s_stairs          %s_stem %s_hyphae stripped_%s_stem stripped_%s_hyphae
		8 %s_slab            %s_stem %s_hyphae stripped_%s_stem stripped_%s_hyphae
		1 %s_stairs          %s_planks
		2 %s_slab            %s_planks
	EOF
done

# generate recipe for 2 sticks
file="$dir/sticks_2.recipe.json"
echo '{
  "type": "minecraft:stonecutting",
  "ingredient": [' > "$file"
for input in {oak,spruce,birch,jungle,acacia,dark_oak,crimson,warped}_planks; do
	echo "    { \"item\": \"minecraft:$input\" },"
done | sed '$s/,$//' >> "$file"
echo "  ],
  \"result\": \"minecraft:stick\",
  \"count\": 2
}" >> "$file"

# generate recipe for 8 sticks
file="$dir/sticks_8.recipe.json"
echo '{
  "type": "minecraft:stonecutting",
  "ingredient": [' > "$file"
for input in \
	{,stripped_}{oak,spruce,birch,jungle,acacia,dark_oak}_{log,wood} \
	{,stripped_}{crimson,warped}_{stem,hyphae}
do
	echo "    { \"item\": \"minecraft:$input\" },"
done | sed '$s/,$//' >> "$file"
echo "  ],
  \"result\": \"minecraft:stick\",
  \"count\": 8
}" >> "$file"

