#!/bin/bash

# generate structures from template
while read structure dim block; do
	structure="${structure#\#}"
	export structure dim block
	sempl \
		buce-data/mythic/searching/trigger.advancement.json.sempl \
		buce-data/mythic/searching/$structure/trigger.advancement.json \
		|| exit
done <<-EOF
	bastion_remnant  the_nether blackstone
	buried_treasure  overworld  sand
	desert_pyramid   overworld  sandstone
	end_city         the_end    end_stone
	fortress         the_nether nether_bricks
	nether_fossil    the_nether soul_soil
	#ruined_portal   overworld  obsidian
	igloo            overworld  snow_block
	jungle_pyramid   overworld  mossy_cobblestone
	mansion          overworld  dark_oak_log
	#mineshaft       overworld  stone
	monument         overworld  prismarine
	#ocean_ruin      overworld  gravel
	pillager_outpost overworld  dark_oak_planks
	#shipwreck       overworld  oak_planks
	stronghold       overworld  mossy_stone_bricks
	swamp_hut        overworld  spruce_planks
	#village         overworld  emerald_block
EOF

# ad hoc stuff
cp buce-data/mythic/searching/ruined_portal/trigger.advancement.json buce-data/mythic/searching/ruined_portal/trigger_nether.advancement.json
sed -i 's/overworld/the_nether/' buce-data/mythic/searching/ruined_portal/trigger_nether.advancement.json

