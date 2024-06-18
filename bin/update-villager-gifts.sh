#!/bin/bash

# switch to git root
gitroot="$(git rev-parse --show-toplevel)" || exit
cd "$gitroot"

# define some data
latest="$(./bin/latest)" || exit
export SEMPL_BRACES='{{}}'

ls "$latest.jar/data/minecraft/loot_table/gameplay/hero_of_the_village/" \
	| sed 's/_gift\.json$//' \
	| while read prof
do
	if ! grep -q "BEGIN ${prof^^}" buce-data/heads/heads.dat \
		|| ! grep -q "END ${prof^^}" buce-data/heads/heads.dat;
	then
		echo "Profession '$prof' not defined: buce-data/heads/heads.dat" >&2
		exit 1
	fi

	#cat <<-EOF
	sempl - "data/minecraft/loot_table/gameplay/hero_of_the_village/${prof}_gift.json.yaml" <<-EOF
		type: gift
		pools:
		  #- rolls: 1
		  #  entries:
		  #    - { type: loot_table, weight: 1, table: "minecraft:orig/gameplay/hero_of_the_village/armorer_gift" }
		  - rolls: 1
		    entries:
		{{<!sed -n '/BEGIN GIFTS/,/END GIFTS/ { /^[^#]/p }' buce-data/heads/heads.dat}}{{\\\\}}
		      - { type: item, weight: 1, item: player_head, components: "{\\"item_name\\":\\"\\\\\\"{{4:}}'s Head\\\\\\"\\",\\"profile\\":{\\"id\\":{{1}},\\"properties\\":[{\\"name\\":\\"textures\\",\\"value\\":\\"{{2}}\\"}]},\\"note_block_sound\\":\\"minecraft:{{3}}\\"}" }
		{{<!sed -n '/BEGIN ${prof^^}/,/END ${prof^^}/ { /^[^#]/p }' buce-data/heads/heads.dat}}{{\\\\}}
		      - { type: item, weight: 1, item: player_head, components: "{\\"item_name\\":\\"\\\\\\"{{4:}}'s Head\\\\\\"\\",\\"profile\\":{\\"id\\":{{1}},\\"properties\\":[{\\"name\\":\\"textures\\",\\"value\\":\\"{{2}}\\"}]},\\"note_block_sound\\":\\"minecraft:{{3}}\\"}" }
	EOF
done

