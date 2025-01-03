
DATARESOURCEPACKFILES = \
	cutting_wood.zip \
	pig_armor.zip \
	oven_brick.zip \
	phantasmal.zip \
	custom_items.zip \
	poseable.zip \
	#copper_overhaul.zip \

RESOURCEPACKFILES = \
	$(DATARESOURCEPACKFILES) \
	brew_guide_darkmode.zip \
	brew_guide.zip \
	classic_crunch.zip \
	classic_food.zip \
	classic_lapis.zip \
	classic_lava.zip \
	classic_moo.zip \
	classic_netherrack.zip \
	classic_oak.zip \
	classic_obsidian.zip \
	classic_rose.zip \
	classic_sploosh.zip \
	classic_twang.zip \
	discreet_cart.zip \
	discreet_hrrm.zip \
	discreet_meow.zip \
	discreet_pumpkin.zip \
	duck.zip \
	note_guide.zip \
	ore_types.zip \
	painting_overhaul.zip \
	ravager.zip \
	tech_arrows.zip \
	villager_mech.zip \

DATAPACKFILES = \
	$(DATARESOURCEPACKFILES) \
	acclimated.zip \
	archived.zip \
	blue_fire.zip \
	climbable.zip \
	crafting_colorful.zip \
	crafting_elixir.zip \
	crafting_loot.zip \
	crafting_plentiful.zip \
	crafting_shell_box.zip \
	crafting_snack.zip \
	crafting_unpacked.zip \
	crafting_workstation.zip \
	curated_bonus_chest.zip \
	cutting_declutter.zip \
	cutting_smooth_cracked.zip \
	debugless.zip \
	dragonproof.zip \
	elemental.zip \
	enchanted.zip \
	escape_end.zip \
	escape_grind.zip \
	escape_nether.zip \
	eyes_of_seeking.zip \
	farmable.zip \
	frienderchest.zip \
	gardener_endermen.zip \
	global_effects.zip \
	heads_fae.zip \
	heads_golem.zip \
	heads_player.zip \
	locomotive.zip \
	loot_overhaul_treasure_barrels.zip \
	loot_overhaul.zip \
	mineable.zip \
	network_nether.zip \
	no_treasure_maps.zip \
	oven_tier.zip \
	phantasmal_end.zip \
	shearless.zip \
	smart_allays.zip \
	speedy_paths.zip \
	starter_bed.zip \
	starter_bonus_box.zip \
	starter_bonus_chest.zip \
	starter_book.zip \
	starter_bucket.zip \
	starter_map.zip \
	starter_shulker.zip \
	starter_spyglass.zip \
	wandering_loot.zip \
	waterproof_tech.zip \
	worldgen_moonlit.zip \
	worldgen_overworld.zip \
	worldgen_sandy_husk.zip \
	worldgen_trees.zip \
	#worldgen_anti.zip \
	#crafter.zip \
	#bulbs.zip \
	#aggro_bastions.zip \
	#antidote.zip \
	#dripblock.zip \
	#heirlooms.zip \
	#hover_mode.zip \
	#illusory_trader.zip \
	#leashed.zip \
	#lichdom.zip \
	#network_deep.zip \
	#worldgen_apocalypse.zip \
	#worldgen_desert_breeze.zip \

PACKFILES = $(sort $(RESOURCEPACKFILES) $(DATAPACKFILES))

.PHONY: all
all: $(PACKFILES)

# needed by all pack targets
DEFAULT_RESOURCE_FILES = LICENSE.txt
DEFAULT_DATA_FILES = \
	LICENSE.txt \
	data/buce/advancement/root.json \
	data/buce/advancement/errors.json \

LICENSE.txt: LICENSE
	cp -v $< $@

painting_overhaul_FILES := $(DEFAULT_RESOURCE_FILES) \
	assets/minecraft/textures/painting/kebab.png \
	assets/minecraft/textures/painting/aztec.png \
	assets/minecraft/textures/painting/alban.png \
	assets/minecraft/textures/painting/aztec2.png \
	assets/minecraft/textures/painting/bomb.png \
	assets/minecraft/textures/painting/plant.png \
	assets/minecraft/textures/painting/wasteland.png \
	assets/minecraft/textures/painting/wanderer.png \
	assets/minecraft/textures/painting/graham.png \
	assets/minecraft/textures/painting/pool.png \
	assets/minecraft/textures/painting/courbet.png \
	assets/minecraft/textures/painting/sunset.png \
	assets/minecraft/textures/painting/sea.png \
	assets/minecraft/textures/painting/creebet.png \
	assets/minecraft/textures/painting/match.png \
	assets/minecraft/textures/painting/bust.png \
	assets/minecraft/textures/painting/stage.png \
	assets/minecraft/textures/painting/void.png \
	assets/minecraft/textures/painting/skull_and_roses.png \
	assets/minecraft/textures/painting/wither.png \
	assets/minecraft/textures/painting/fighters.png \
	assets/minecraft/textures/painting/skeleton.png \
	assets/minecraft/textures/painting/donkey_kong.png \
	assets/minecraft/textures/painting/burning_skull.png \
	assets/minecraft/textures/painting/pigscene.png \
	assets/minecraft/textures/painting/pointer.png \

note_guide_FILES := $(DEFAULT_RESOURCE_FILES) \
	assets/minecraft/textures/block/note_block_0.png \
	assets/minecraft/textures/block/note_block_1.png \
	assets/minecraft/textures/block/note_block_2.png \
	assets/minecraft/textures/block/note_block_3.png \
	assets/minecraft/textures/block/note_block_4.png \
	assets/minecraft/textures/block/note_block_5.png \
	assets/minecraft/textures/block/note_block_6.png \
	assets/minecraft/textures/block/note_block_7.png \
	assets/minecraft/textures/block/note_block_8.png \
	assets/minecraft/textures/block/note_block_9.png \
	assets/minecraft/textures/block/note_block_10.png \
	assets/minecraft/textures/block/note_block_11.png \
	assets/minecraft/models/block/note_block_0.json \
	assets/minecraft/models/block/note_block_1.json \
	assets/minecraft/models/block/note_block_2.json \
	assets/minecraft/models/block/note_block_3.json \
	assets/minecraft/models/block/note_block_4.json \
	assets/minecraft/models/block/note_block_5.json \
	assets/minecraft/models/block/note_block_6.json \
	assets/minecraft/models/block/note_block_7.json \
	assets/minecraft/models/block/note_block_8.json \
	assets/minecraft/models/block/note_block_9.json \
	assets/minecraft/models/block/note_block_10.json \
	assets/minecraft/models/block/note_block_11.json \
	assets/minecraft/items/note_block.json \
	assets/minecraft/blockstates/note_block.json \

note_guide_adv_FILES := $(DEFAULT_RESOURCE_FILES) \
	assets/minecraft/textures/block/adv_note_block_0.png \
	assets/minecraft/textures/block/adv_note_block_1.png \
	assets/minecraft/textures/block/adv_note_block_2.png \
	assets/minecraft/textures/block/adv_note_block_3.png \
	assets/minecraft/textures/block/adv_note_block_4.png \
	assets/minecraft/textures/block/adv_note_block_5.png \
	assets/minecraft/textures/block/adv_note_block_6.png \
	assets/minecraft/textures/block/adv_note_block_7.png \
	assets/minecraft/textures/block/adv_note_block_8.png \
	assets/minecraft/textures/block/adv_note_block_9.png \
	assets/minecraft/textures/block/adv_note_block_10.png \
	assets/minecraft/textures/block/adv_note_block_11.png \
	assets/minecraft/textures/block/adv_note_block_12.png \
	assets/minecraft/textures/block/adv_note_block_13.png \
	assets/minecraft/textures/block/adv_note_block_14.png \
	assets/minecraft/textures/block/adv_note_block_15.png \
	assets/minecraft/textures/block/adv_note_block_16.png \
	assets/minecraft/textures/block/adv_note_block_17.png \
	assets/minecraft/textures/block/adv_note_block_18.png \
	assets/minecraft/textures/block/adv_note_block_19.png \
	assets/minecraft/textures/block/adv_note_block_20.png \
	assets/minecraft/textures/block/adv_note_block_21.png \
	assets/minecraft/textures/block/adv_note_block_22.png \
	assets/minecraft/textures/block/adv_note_block_23.png \
	assets/minecraft/textures/block/adv_note_block_24.png \
	assets/minecraft/models/block/note_block_0.json \
	assets/minecraft/models/block/note_block_1.json \
	assets/minecraft/models/block/note_block_2.json \
	assets/minecraft/models/block/note_block_3.json \
	assets/minecraft/models/block/note_block_4.json \
	assets/minecraft/models/block/note_block_5.json \
	assets/minecraft/models/block/note_block_6.json \
	assets/minecraft/models/block/note_block_7.json \
	assets/minecraft/models/block/note_block_8.json \
	assets/minecraft/models/block/note_block_9.json \
	assets/minecraft/models/block/note_block_10.json \
	assets/minecraft/models/block/note_block_11.json \
	assets/minecraft/models/block/note_block_12.json \
	assets/minecraft/models/block/note_block_13.json \
	assets/minecraft/models/block/note_block_14.json \
	assets/minecraft/models/block/note_block_15.json \
	assets/minecraft/models/block/note_block_16.json \
	assets/minecraft/models/block/note_block_17.json \
	assets/minecraft/models/block/note_block_18.json \
	assets/minecraft/models/block/note_block_19.json \
	assets/minecraft/models/block/note_block_20.json \
	assets/minecraft/models/block/note_block_21.json \
	assets/minecraft/models/block/note_block_22.json \
	assets/minecraft/models/block/note_block_23.json \
	assets/minecraft/models/block/note_block_24.json \
	assets/minecraft/models/item/note_block.json \
	assets/minecraft/blockstates/adv_note_block.json \

brew_guide_FILES := $(DEFAULT_RESOURCE_FILES) \
	assets/minecraft/textures/gui/container/brewing_stand.png \

brew_guide_darkmode_FILES := $(DEFAULT_RESOURCE_FILES) \
	assets/minecraft/textures/gui/container/brewing_stand_brew_guide_darkmode.png \

tech_arrows_FILES := $(DEFAULT_RESOURCE_FILES) \
	assets/minecraft/models/block/hopper_side.json \
	assets/minecraft/models/block/observer.json \
	assets/minecraft/models/block/observer_on.json \
	assets/minecraft/textures/block/hopper_inside.png \
	assets/minecraft/textures/block/hopper_inside_side.png \
	assets/minecraft/textures/block/observer_back_on.png \
	assets/minecraft/textures/block/observer_side.png \
	assets/minecraft/textures/block/observer_side_on.png \
	assets/minecraft/textures/block/observer_front_on.png \

ravager_FILES := $(DEFAULT_RESOURCE_FILES) \
	assets/minecraft/textures/entity/illager/ravager.png \
	#$(wildcard assets/minecraft/sounds/mob/ravager/*.ogg) \
	#assets/minecraft/sounds_ravager.json \

duck_FILES := $(DEFAULT_RESOURCE_FILES) \
	$(wildcard assets/minecraft/lang/*_duck.json) \
	$(wildcard assets/minecraft/sounds/mob/duck/*.ogg) \
	assets/minecraft/sounds_duck.json \
	assets/minecraft/textures/entity/chicken.png \

villager_mech_FILES := $(DEFAULT_RESOURCE_FILES) \
	assets/minecraft/textures/entity/iron_golem/iron_golem.png \
	assets/minecraft/textures/entity/iron_golem/iron_golem_crackiness_low.png \
	assets/minecraft/textures/entity/iron_golem/iron_golem_crackiness_medium.png \
	assets/minecraft/textures/entity/iron_golem/iron_golem_crackiness_high.png \

candystrider_FILES := $(DEFAULT_RESOURCE_FILES) \
	assets/minecraft/textures/entity/strider/strider_cold.png \
	assets/minecraft/textures/entity/strider/strider.png \

pig_armor_FILES := $(DEFAULT_DATA_FILES) \
	$(shell find buce-data/pig_armor -type f | ./bin/ext2dir) \
	assets/minecraft/textures/entity/pig/pig_saddle.png \

ore_types_FILES := $(DEFAULT_RESOURCE_FILES) \
	assets/minecraft/textures/block/coal_ore.png \
	assets/minecraft/textures/block/lapis_ore.png \
	assets/minecraft/textures/block/diamond_ore.png \
	assets/minecraft/textures/block/redstone_ore.png \
	assets/minecraft/textures/block/emerald_ore.png \
	assets/minecraft/textures/block/gold_ore.png \
	assets/minecraft/textures/block/iron_ore.png \
	assets/minecraft/textures/block/copper_ore.png \
	#assets/minecraft/blockstates/coal_ore.json \
	#assets/minecraft/blockstates/lapis_ore.json \
	#assets/minecraft/models/block/coal_ore_1.json \
	#assets/minecraft/models/block/coal_ore_2.json \
	#assets/minecraft/models/block/lapis_ore_1.json \
	#assets/minecraft/models/block/lapis_ore_2.json \
	#assets/minecraft/textures/block/coal_ore_1.png \
	#assets/minecraft/textures/block/coal_ore_2.png \
	#assets/minecraft/textures/block/lapis_ore_1.png \
	#assets/minecraft/textures/block/lapis_ore_2.png \

discreet_pumpkin_FILES := $(DEFAULT_RESOURCE_FILES) \
	assets/minecraft/textures/misc/pumpkinblur.png \

classic_oak_FILES := $(DEFAULT_RESOURCE_FILES) \
	assets/minecraft/textures/block/oak_log.png \
	#assets/minecraft/textures/block/oak_log_top.png \

classic_netherrack_FILES := $(DEFAULT_RESOURCE_FILES) \
	assets/minecraft/textures/block/netherrack.png \
	assets/minecraft/textures/block/nether_quartz_ore.png \
	assets/minecraft/textures/block/nether_gold_ore.png \
	assets/minecraft/textures/block/crimson_nylium_side.png \
	assets/minecraft/textures/block/warped_nylium_side.png \

classic_lava_FILES := $(DEFAULT_RESOURCE_FILES) \
	assets/minecraft/textures/block/lava_still.png.mcmeta \
	assets/minecraft/textures/block/lava_flow.png.mcmeta \
	assets/minecraft/textures/block/lava_still.png \
	assets/minecraft/textures/block/lava_flow.png \

classic_obsidian_FILES := $(DEFAULT_RESOURCE_FILES) \
	assets/minecraft/textures/block/crying_obsidian.png \
	assets/minecraft/textures/block/obsidian.png \

classic_lapis_FILES := $(DEFAULT_RESOURCE_FILES) \
	assets/minecraft/textures/block/lapis_block.png \

classic_rose_FILES := $(DEFAULT_RESOURCE_FILES) \
	$(wildcard assets/minecraft/lang/*_classic_rose.json) \
	assets/minecraft/textures/block/poppy.png \

classic_food_FILES := $(DEFAULT_RESOURCE_FILES) \
	assets/minecraft/textures/block/cake_bottom.png \
	assets/minecraft/textures/block/cake_inner.png \
	assets/minecraft/textures/block/cake_side.png \
	assets/minecraft/textures/block/cake_top.png \
	assets/minecraft/textures/item/apple.png \
	assets/minecraft/textures/item/baked_potato.png \
	assets/minecraft/textures/item/beef.png \
	assets/minecraft/textures/item/bread.png \
	assets/minecraft/textures/item/cake.png \
	assets/minecraft/textures/item/carrot.png \
	assets/minecraft/textures/item/chicken.png \
	assets/minecraft/textures/item/cod.png \
	assets/minecraft/textures/item/cooked_beef.png \
	assets/minecraft/textures/item/cooked_chicken.png \
	assets/minecraft/textures/item/cooked_cod.png \
	assets/minecraft/textures/item/cooked_mutton.png \
	assets/minecraft/textures/item/cooked_porkchop.png \
	assets/minecraft/textures/item/cooked_rabbit.png \
	assets/minecraft/textures/item/cooked_salmon.png \
	assets/minecraft/textures/item/cookie.png \
	assets/minecraft/textures/item/golden_apple.png \
	assets/minecraft/textures/item/golden_carrot.png \
	assets/minecraft/textures/item/mutton.png \
	assets/minecraft/textures/item/poisonous_potato.png \
	assets/minecraft/textures/item/porkchop.png \
	assets/minecraft/textures/item/potato.png \
	assets/minecraft/textures/item/pumpkin_pie.png \
	assets/minecraft/textures/item/rabbit.png \
	assets/minecraft/textures/item/salmon.png \

retronetherrack_FILES := $(DEFAULT_RESOURCE_FILES) \
	assets/minecraft/textures/block/netherrack.png \
	assets/minecraft/textures/block/nether_quartz_ore.png \

retroiron_FILES := $(DEFAULT_RESOURCE_FILES) \
	assets/minecraft/textures/block/iron_block.png \

classic_moo_FILES := $(DEFAULT_RESOURCE_FILES) \
	assets/minecraft/sounds/mob/cow/hurt1.ogg \
	assets/minecraft/sounds/mob/cow/hurt2.ogg \
	assets/minecraft/sounds/mob/cow/hurt3.ogg \
	assets/minecraft/sounds/mob/cow/say1.ogg \
	assets/minecraft/sounds/mob/cow/say2.ogg \
	assets/minecraft/sounds/mob/cow/say3.ogg \
	assets/minecraft/sounds/mob/cow/say4.ogg \

classic_twang_FILES := $(DEFAULT_RESOURCE_FILES) \
	assets/minecraft/sounds/random/bowhit4.ogg \
	assets/minecraft/sounds/random/bowhit2.ogg \
	assets/minecraft/sounds/random/bowhit1.ogg \
	assets/minecraft/sounds/random/bowhit3.ogg \

classic_sploosh_FILES := $(DEFAULT_RESOURCE_FILES) \
	assets/minecraft/sounds/liquid/splash.ogg \
	assets/minecraft/sounds/liquid/splash2.ogg \
	assets/minecraft/sounds/liquid/swim1.ogg \
	assets/minecraft/sounds/liquid/swim2.ogg \
	assets/minecraft/sounds/liquid/swim3.ogg \
	assets/minecraft/sounds/liquid/swim4.ogg \

classic_crunch_FILES := $(DEFAULT_RESOURCE_FILES) \
	assets/minecraft/sounds/step/grass4.ogg \
	assets/minecraft/sounds/step/grass5.ogg \
	assets/minecraft/sounds/step/grass1.ogg \
	assets/minecraft/sounds/step/grass2.ogg \
	assets/minecraft/sounds/step/grass6.ogg \
	assets/minecraft/sounds/step/grass3.ogg \

discreet_cart_FILES := $(DEFAULT_RESOURCE_FILES) \
	assets/minecraft/sounds/minecart/base.ogg \

discreet_hrrm_FILES := $(DEFAULT_RESOURCE_FILES) \
	assets/minecraft/sounds/silence.ogg \
	assets/minecraft/sounds_discreet_hrrm.json \

discreet_meow_FILES := $(DEFAULT_RESOURCE_FILES) \
	assets/minecraft/sounds/silence.ogg \
	assets/minecraft/sounds_discreet_meow.json \

gardener_endermen_FILES := $(DEFAULT_DATA_FILES) \
	data/minecraft/tags/block/enderman_holdable.json \
	data/buce/advancement/gardener_endermen.json \

climbable_FILES := $(DEFAULT_DATA_FILES) \
	$(shell ls buce-data/climbable* | ./bin/ext2dir) \
	data/minecraft/tags/block/climbable.json \

heirlooms_FILES := $(DEFAULT_DATA_FILES) \
	$(shell find data/minecraft -name '*heirlooms*' | ./bin/ext2dir) \
	$(shell find buce-data/heirlooms -type f | ./bin/ext2dir) \

hover_mode_FILES := $(DEFAULT_DATA_FILES) \
	$(shell ls buce-data/hover_mode* | ./bin/ext2dir) \
	data/minecraft/tags/block/climbable_hover_mode.json \

oven_brick_FILES := $(DEFAULT_DATA_FILES) \
	$(wildcard assets/minecraft/textures/block/smoker_*) \
	$(wildcard data/minecraft/recipe/*from_smoking*) \
	$(wildcard data/minecraft/recipe/*from_campfire_cooking*) \
	assets/minecraft/lang/en_us_oven_brick.json \
	data/minecraft/recipe/smoker_oven_brick.json \

oven_tier_FILES := $(DEFAULT_DATA_FILES) \
	data/minecraft/recipe/furnace.json \

waterproof_tech_FILES := $(DEFAULT_DATA_FILES) \
	data/minecraft/tags/block/signs.json \
	data/buce/advancement/waterproof_tech.json \

aggro_bastions_FILES := $(DEFAULT_DATA_FILES) \
	data/minecraft/tags/block/guarded_by_piglins.json \
	data/buce/advancement/aggro_bastions.json \

antidote_FILES := $(DEFAULT_DATA_FILES) \
	$(shell find buce-data/antidote -type f | ./bin/ext2dir) \
	data/buce/function/var.mcfunction \
	data/minecraft/tags/function/load_antidote.json \

acclimated_FILES := $(DEFAULT_DATA_FILES) \
	data/minecraft/tags/block/strider_warm_blocks.json \
	data/minecraft/tags/entity_type/can_breathe_under_water.json \
	data/minecraft/tags/entity_type/dismounts_underwater.json \
	data/minecraft/tags/entity_type/fall_damage_immune.json \
	data/minecraft/tags/entity_type/powder_snow_walkable_mobs.json \

network_deep_FILES := $(DEFAULT_DATA_FILES) \
	$(shell find buce-data/portal/deep -type f | ./bin/ext2dir) \
	data/minecraft/tags/function/load_network_deep.json \
	data/buce/function/var.mcfunction \

network_nether_FILES := $(DEFAULT_DATA_FILES) \
	$(shell find buce-data/portal/nether -type f | ./bin/ext2dir) \
	data/minecraft/tags/function/load_network_nether.json \
	data/buce/function/var.mcfunction \

no_treasure_maps_FILES := $(DEFAULT_DATA_FILES) \
	$(shell find buce-data/ data/minecraft/ -name '*no_treasure_maps*' | ./bin/ext2dir | sort -u) \

blue_fire_FILES := $(DEFAULT_DATA_FILES) \
	data/minecraft/tags/block/soul_fire_base_blocks.json \
	data/buce/advancement/blue_fire.json \

farmable_FILES := $(DEFAULT_DATA_FILES) \
	data/buce/advancement/farmable.json \
	data/minecraft/loot_table/blocks/azalea_leaves.json \
	data/minecraft/loot_table/blocks/beetroots.json \
	data/minecraft/loot_table/blocks/flowering_azalea_leaves.json \
	data/minecraft/loot_table/blocks/infested_*.json \
	data/minecraft/loot_table/blocks/jungle_leaves.json \
	data/minecraft/loot_table/blocks/wheat.json \
	data/minecraft/loot_table/entities/goat.json \
	data/minecraft/loot_table/entities/husk.json \
	data/minecraft/loot_table/entities/shulker.json \
	data/minecraft/loot_table/entities/sniffer.json \
	data/minecraft/loot_table/gameplay/sniffer_digging.json \
	data/minecraft/tags/block/azalea_grows_on.json \
	data/minecraft/tags/block/bamboo_plantable_on.json \
	data/minecraft/tags/block/dead_bush_may_place_on.json \
	data/minecraft/tags/block/mushroom_grow_block.json \
	data/minecraft/tags/block/nylium.json \
	data/minecraft/tags/block/small_dripleaf_placeable.json \
	data/minecraft/tags/item/sniffer_food.json \
	#data/minecraft/tags/block/dirt.json \

frienderchest_FILES := $(DEFAULT_DATA_FILES) \
	$(shell find buce-data/frienderchest -type f | ./bin/ext2dir) \
	data/minecraft/tags/function/load_frienderchest.json \
	data/buce/function/var.mcfunction \

global_effects_FILES := $(DEFAULT_DATA_FILES) \
	$(shell find buce-data/global_effects -type f | ./bin/ext2dir) \
	data/buce/function/var.mcfunction \
	data/minecraft/tags/function/load_global_effects.json \

curated_bonus_chest_FILES := $(DEFAULT_DATA_FILES) \
	data/minecraft/loot_table/chests/spawn_bonus_chest.json \
	data/buce/loot_table/loot_overhaul/biome_log.json \
	data/buce/advancement/curated_bonus_chest/root.json \

loot_overhaul_FILES := $(DEFAULT_DATA_FILES) \
	$(shell find buce-data/loot_overhaul -type f | ./bin/ext2dir) \
	$(shell find buce-data/crafting/loot -type f | ./bin/ext2dir) \
	$(shell find data/minecraft/loot_table/orig/{chests,gameplay/{fishing,piglin_bartering.*}} -type f | sed '/spawn_bonus/d; s|orig/||' | ./bin/ext2dir) \
	$(wildcard data/minecraft/tags/worldgen/structure/on_*_maps.json) \
	data/minecraft/loot_table/archaeology/trail_ruins_common.json \
	data/minecraft/recipe/leather_horse_armor.json \
	data/minecraft/tags/item/creeper_drop_music_discs.json \
	data/minecraft/tags/item/starter_item.json \

loot_overhaul_treasure_barrels_FILES := $(DEFAULT_DATA_FILES) \
	$(shell ls buce-data/loot_addons/loot_overhaul_treasure_barrels* | ./bin/ext2dir) \
	data/buce/loot_table/loot_overhaul/buried_treasure_loot_overhaul_treasure_barrels.json \
	#$(shell find buce-data/ data/minecraft/ -name '*no_treasure_maps*' | ./bin/ext2dir | sort -u) \

wandering_loot_FILES := $(DEFAULT_DATA_FILES) \
	$(shell find buce-data/wandering -type f | ./bin/ext2dir) \

starter_bonus_box_FILES := $(DEFAULT_DATA_FILES) \
	$(shell find buce-data/starter_bonus_box -type f | ./bin/ext2dir) \

starter_bonus_chest_FILES := $(DEFAULT_DATA_FILES) \
	$(shell find buce-data/starter_bonus_chest -type f | ./bin/ext2dir) \

starter_bed_FILES := $(DEFAULT_DATA_FILES) \
	data/minecraft/tags/item/starter_item_starter_bed.json \
	data/buce/advancement/curated_bonus_chest/starter_bed.json \

starter_book_FILES := $(DEFAULT_DATA_FILES) \
	data/minecraft/tags/item/starter_item_starter_book.json \
	data/buce/advancement/curated_bonus_chest/starter_book.json \

starter_bucket_FILES := $(DEFAULT_DATA_FILES) \
	data/minecraft/tags/item/starter_item_starter_bucket.json \
	data/buce/advancement/curated_bonus_chest/starter_bucket.json \

starter_map_FILES := $(DEFAULT_DATA_FILES) \
	data/minecraft/tags/item/starter_item_starter_map.json \
	data/buce/advancement/curated_bonus_chest/starter_map.json \

starter_shulker_FILES := $(DEFAULT_DATA_FILES) \
	data/minecraft/tags/item/starter_item_starter_shulker.json \
	data/buce/advancement/curated_bonus_chest/starter_shulker.json \

starter_spyglass_FILES := $(DEFAULT_DATA_FILES) \
	data/minecraft/tags/item/starter_item_starter_spyglass.json \
	data/buce/advancement/curated_bonus_chest/starter_spyglass.json \

debugless_FILES := $(DEFAULT_DATA_FILES) \
	$(shell find buce-data/debugless -type f | ./bin/ext2dir) \
	data/buce/function/sqrt.mcfunction \
	data/buce/function/var.mcfunction \
	data/buce/recipe/phantasmal/light.json \
	data/minecraft/tags/function/load_debugless.json \

dragonproof_FILES := $(DEFAULT_DATA_FILES) \
	data/buce/advancement/dragonproof.json \
	data/minecraft/tags/block/dragon_immune.json \

leashed_FILES := $(DEFAULT_DATA_FILES) \
	$(shell find buce-data/leashed -type f | ./bin/ext2dir) \
	data/buce/function/var.mcfunction \
	data/minecraft/tags/function/load_leashed.json \

mineable_FILES := $(DEFAULT_DATA_FILES) \
	data/minecraft/tags/block/mineable/axe.json \
	data/minecraft/tags/block/mineable/pickaxe.json \
	data/minecraft/tags/block/mineable/shovel.json \
	data/minecraft/tags/block/sword_efficient.json \
	data/buce/advancement/mineable.json \

worldgen_apocalypse_FILES := $(DEFAULT_DATA_FILES) \
	$(wildcard data/minecraft/worldgen/template_pool/village/*/town_centers.json) \

data/minecraft/worldgen/noise_settings/amplified.json: data/minecraft/worldgen/noise_settings/overworld.json
	./bin/normal2amplified

data/minecraft/worldgen/noise_settings/large_biomes.json: data/minecraft/worldgen/noise_settings/overworld.json
	./bin/normal2large

worldgen_overworld_FILES := $(DEFAULT_DATA_FILES) \
	data/minecraft/tags/block/deepslate_ore_replaceables.json \
	data/minecraft/tags/block/stone_ore_replaceables.json \
	data/minecraft/worldgen/biome/granite_peaks.json \
	data/minecraft/worldgen/biome/molten_peaks.json \
	data/minecraft/worldgen/configured_feature/lake_lava_volcano.json \
	data/minecraft/worldgen/configured_feature/ore_coal_buried.json \
	data/minecraft/worldgen/configured_feature/ore_diorite.json \
	data/minecraft/worldgen/configured_feature/ore_gold_buried.json \
	data/minecraft/worldgen/configured_feature/ore_granite.json \
	data/minecraft/worldgen/configured_feature/ore_lapis_buried.json \
	data/minecraft/worldgen/configured_feature/swamp_vegetation.json \
	data/minecraft/worldgen/noise_settings/amplified.json \
	data/minecraft/worldgen/noise_settings/large_biomes.json \
	data/minecraft/worldgen/noise_settings/overworld.json \
	data/minecraft/worldgen/placed_feature/lake_lava_volcano.json \
	data/minecraft/worldgen/placed_feature/spring_lava_volcano.json \
	data/minecraft/worldgen/placed_feature/swamp_oak_checked.json \
	data/minecraft/worldgen/placed_feature/trees_swamp.json \
	data/minecraft/worldgen/world_preset/amplified.json \
	data/minecraft/worldgen/world_preset/large_biomes.json \
	data/minecraft/worldgen/world_preset/normal.json \
	#data/minecraft/dimension/overworld.json \
	#data/minecraft/worldgen/configured_feature/ore_diamond_buried.json \
	#data/minecraft/worldgen/configured_feature/ore_diamond_large.json \
	#data/minecraft/worldgen/configured_feature/ore_diamond_medium.json \
	#data/minecraft/worldgen/configured_feature/ore_diamond_small.json \

worldgen_moonlit_FILES := $(DEFAULT_DATA_FILES) \
	data/minecraft/dimension_type/overworld.json \

worldgen_anti_FILES := $(DEFAULT_DATA_FILES) \

worldgen_desert_breeze_FILES := $(DEFAULT_DATA_FILES) \
	data/minecraft/worldgen/structure/desert_pyramid_worldgen_desert_breeze.json \
	data/minecraft/loot_table/entities/breeze.json \

worldgen_sandy_husk_FILES := $(DEFAULT_DATA_FILES) \
	data/minecraft/worldgen/structure/desert_pyramid.json \
	data/minecraft/loot_table/entities/husk.json \

worldgen_trees_FILES := $(DEFAULT_DATA_FILES) \
	$(shell find buce-data/crafting/trees/ -type f | ./bin/ext2dir) \
	$(shell ls data/minecraft/loot_table/blocks/*_{wood,hyphae}.json | ./bin/ext2dir) \
	$(shell grep -rl data/minecraft/worldgen/configured_feature/ -e'"minecraft:.*_'{wood,hyphae}'"' | ./bin/ext2dir) \
	data/minecraft/tags/block/overworld_natural_logs.json \
	#data/minecraft/worldgen/noise_settings/overworld.json \

dripblock_FILES := $(DEFAULT_DATA_FILES) \
	$(shell find buce-data/dripblock -type f | ./bin/ext2dir) \
	$(shell find data/minecraft/tags/worldgen/biome/has_structure -type f) \
	data/minecraft/loot_table/entities/creeper.json \
	data/minecraft/tags/block/moss_replaceable.json \
	data/minecraft/tags/function/island_dripblock.json \
	data/minecraft/tags/function/load_dripblock.json \
	data/minecraft/worldgen/noise_settings/overworld_dripblock.json \

archived_FILES := $(DEFAULT_DATA_FILES) \
	$(wildcard data/minecraft/tags/item/enchantable/*.json) \
	$(wildcard data/minecraft/tags/enchantment/exclusive_set/*.json) \
	data/minecraft/recipe/chiseled_bookshelf.json \
	data/minecraft/tags/block/enchantment_power_provider.json \
	data/minecraft/tags/block/enchantment_power_transmitter.json \
	data/minecraft/tags/entity_type/sensitive_to_impaling.json \
	data/minecraft/tags/item/bookshelf_books.json \

elemental_FILES := $(DEFAULT_DATA_FILES) \
	data/minecraft/loot_table/entities/blaze.json \
	data/minecraft/loot_table/entities/breeze.json \
	data/minecraft/loot_table/entities/iron_golem.json \
	data/minecraft/loot_table/entities/snow_golem.json \

enchanted_FILES := $(DEFAULT_DATA_FILES) \
	$(shell find buce-data/enchanted -type f | ./bin/ext2dir) \
	$(wildcard data/minecraft/tags/enchantment/*.json) \

speedy_paths_FILES := $(DEFAULT_DATA_FILES) \
	$(shell find buce-data/speedy_paths -type f | ./bin/ext2dir) \

smart_allays_FILES := $(DEFAULT_DATA_FILES) \
	$(shell find buce-data/smart_allays -type f | ./bin/ext2dir) \

shearless_FILES := $(DEFAULT_DATA_FILES) \
	$(shell ./bin/shearless-files) \
	data/minecraft/tags/block/mineable/hoe.json \
	data/buce/advancement/shearless.json \

breeding_overhaul_FILES := $(DEFAULT_DATA_FILES) \
	$(shell find buce-data/breeding_overhaul -type f | ./bin/ext2dir) \
	data/minecraft/tags/function/load_breeding_overhaul.json \
	data/buce/function/var.mcfunction \

poseable_FILES := $(DEFAULT_DATA_FILES) \
	$(shell find buce-data/poseable -type f | ./bin/ext2dir) \
	data/minecraft/loot_table/entities/armor_stand.json \
	assets/minecraft/items/armor_stand.json \
	assets/minecraft/models/item/armor_stand*arms*plate.json \
	assets/minecraft/textures/item/armor_stand*arms*plate.png \

custom_items_FILES := $(DEFAULT_DATA_FILES) \
	$(shell find buce-data/custom_items -type f | ./bin/ext2dir) \
	data/minecraft/recipe/netherite_upgrade_smithing_template.json \
	assets/minecraft/models/item/bow.json \
	assets/minecraft/models/item/leather_boots.json \
	assets/minecraft/models/item/diamond_boots.json \
	assets/minecraft/models/item/frost_flood_boots.json \
	assets/minecraft/models/item/leather_moccasins.json \
	assets/minecraft/models/item/crystal_bow*.json \
	assets/minecraft/models/item/echo_bow*.json \
	assets/minecraft/models/item/recurve_bow*.json \
	assets/minecraft/textures/item/leather_moccasins*.png \
	assets/minecraft/textures/item/frost_flood_boots.png \
	assets/minecraft/textures/item/crystal_bow*.png \
	assets/minecraft/textures/item/echo_bow*.png \
	assets/minecraft/textures/item/recurve_bow*.png \
	assets/minecraft/models/item/bow.json \

phantasmal_FILES := $(DEFAULT_DATA_FILES) \
	$(shell find buce-data/phantasmal -type f | ./bin/ext2dir) \
	$(wildcard assets/minecraft/models/item/invis_*.json) \
	$(wildcard assets/minecraft/textures/item/invis_*.png) \
	assets/minecraft/items/item_frame.json \
	assets/minecraft/items/glow_item_frame.json \
	assets/minecraft/textures/item/light_* \
	data/minecraft/loot_table/entities/phantom.json \

phantasmal_end_FILES := $(DEFAULT_DATA_FILES) \
	$(shell find buce-data/phantasmal_end -type f | ./bin/ext2dir) \

eyes_of_seeking_FILES := $(DEFAULT_DATA_FILES) \
	data/buce/advancement/eyes_of_seeking.json \
	data/minecraft/tags/worldgen/structure/eye_of_ender_located.json \

crafting_colorful_FILES := $(DEFAULT_DATA_FILES) \
	data/minecraft/recipe/*_candle.json \
	data/minecraft/recipe/dye_*_banner.json \
	data/minecraft/recipe/*_glass_pane.json \
	data/minecraft/recipe/*_stained_glass.json \
	data/minecraft/recipe/*_terracotta.json \
	data/minecraft/tags/item/glass.json \
	data/minecraft/tags/item/glass_panes.json \
	data/minecraft/tags/item/*_without_*.json \
	#data/minecraft/recipe/*_bed.json \
	#data/minecraft/recipe/*_wool.json \

crafting_elixir_FILES := $(DEFAULT_DATA_FILES) \
	$(shell find buce-data/crafting/elixir -type f | ./bin/ext2dir) \
	data/minecraft/loot_table/blocks/player_head.json \

crafting_loot_FILES := $(DEFAULT_DATA_FILES) \
	$(shell find buce-data/crafting/loot -type f | ./bin/ext2dir) \
	data/minecraft/recipe/leather_horse_armor.json \

crafting_snack_FILES := $(DEFAULT_DATA_FILES) \
	$(shell find buce-data/crafting/snack -type f | ./bin/ext2dir) \
	data/minecraft/loot_table/blocks/player_head.json \
	data/minecraft/recipe/glistering_melon_slice.json \
	data/minecraft/recipe/popped_chorus_fruit_from_campfire_cooking.json \
	data/minecraft/recipe/popped_chorus_fruit_from_smoking.json \
	data/minecraft/recipe/pumpkin_pie.json \

crafting_plentiful_FILES := $(DEFAULT_DATA_FILES) \
	$(shell find buce-data/crafting/plentiful -type f | ./bin/ext2dir) \
	$(wildcard data/minecraft/recipe/*_stairs.json) \
	$(wildcard data/minecraft/recipe/*_fence.json) \
	$(wildcard data/minecraft/recipe/*_fence_gate.json) \
	$(wildcard data/minecraft/recipe/*_pressure_plate.json) \
	$(wildcard data/minecraft/recipe/*_sign.json) \
	$(wildcard data/minecraft/recipe/*_trapdoor.json) \
	$(wildcard data/minecraft/recipe/*_wood.json) \
	$(wildcard data/minecraft/recipe/*_hyphae.json) \
	$(wildcard data/minecraft/recipe/*_nugget_from_blasting*.json) \
	data/minecraft/recipe/netherite_upgrade_smithing_template.json \
	data/minecraft/recipe/black_banner.json \
	data/minecraft/recipe/blue_banner.json \
	data/minecraft/recipe/brown_banner.json \
	data/minecraft/recipe/cyan_banner.json \
	data/minecraft/recipe/gray_banner.json \
	data/minecraft/recipe/green_banner.json \
	data/minecraft/recipe/light_blue_banner.json \
	data/minecraft/recipe/light_gray_banner.json \
	data/minecraft/recipe/lime_banner.json \
	data/minecraft/recipe/magenta_banner.json \
	data/minecraft/recipe/orange_banner.json \
	data/minecraft/recipe/pink_banner.json \
	data/minecraft/recipe/purple_banner.json \
	data/minecraft/recipe/red_banner.json \
	data/minecraft/recipe/white_banner.json \
	data/minecraft/recipe/yellow_banner.json \
	data/minecraft/recipe/hopper.json \
	data/minecraft/recipe/shield.json \
	data/minecraft/recipe/chain.json \

crafting_shell_box_FILES := $(DEFAULT_DATA_FILES) \
	$(shell find buce-data/crafting/shell -type f | ./bin/ext2dir) \
	assets/minecraft/textures/block/green_shulker_box.png \
	assets/minecraft/textures/entity/shulker/shulker_green.png \
	assets/minecraft/lang/en_us_crafting_shell_box.json \

crafting_unpacked_FILES := $(DEFAULT_DATA_FILES) \
	$(shell find buce-data/crafting/unpacked -type f | ./bin/ext2dir) \

crafting_workstation_FILES := $(DEFAULT_DATA_FILES) \
	$(shell find buce-data/crafting/workstation -type f | ./bin/ext2dir) \
	data/minecraft/recipe/barrel.json \
	data/minecraft/recipe/blast_furnace.json \
	data/minecraft/recipe/cartography_table.json \
	data/minecraft/recipe/fletching_table.json \
	data/minecraft/recipe/grindstone.json \
	data/minecraft/recipe/lectern.json \
	data/minecraft/recipe/smithing_table.json \
	data/minecraft/recipe/smoker.json \
	data/minecraft/recipe/stonecutter.json \

cutting_declutter_FILES := $(DEFAULT_DATA_FILES) \
	$(shell find buce-data/cutting/declutter -type f | ./bin/ext2dir) \

cutting_smooth_cracked_FILES := $(DEFAULT_DATA_FILES) \
	$(shell find buce-data/cutting/smooth_cracked -type f | ./bin/ext2dir) \

cutting_wood_FILES := $(DEFAULT_DATA_FILES) \
	$(shell find buce-data/cutting/wood -type f | ./bin/ext2dir) \
	$(wildcard assets/minecraft/lang/*_cutting_wood.json) \

copper_overhaul_FILES := $(DEFAULT_DATA_FILES) \
	$(wildcard assets/minecraft/models/item/stone_*.json) \
	$(wildcard assets/minecraft/models/item/wooden_*.json) \
	$(wildcard assets/minecraft/textures/item/chainmail_*.png) \
	$(wildcard assets/minecraft/textures/item/copper_*.png) \
	$(wildcard assets/minecraft/textures/item/iron_*.png) \
	$(wildcard assets/minecraft/textures/models/armor/chainmail_*.png) \
	$(wildcard assets/minecraft/textures/models/armor/iron_*.png) \
	$(wildcard data/minecraft/recipe/copper_*.json) \
	$(wildcard data/minecraft/recipe/wooden_*.json) \
	$(wildcard data/minecraft/tags/item/stone_*_materials.json) \
	assets/minecraft/lang/en_us_copper_overhaul.json \
	assets/minecraft/textures/block/detector_rail_on.png \
	assets/minecraft/textures/block/detector_rail.png \
	assets/minecraft/textures/block/tripwire_hook.png \
	data/minecraft/recipe/activator_rail.json \
	data/minecraft/recipe/detector_rail.json \
	data/minecraft/recipe/dispenser.json \
	data/minecraft/recipe/stone_axe.json \
	data/minecraft/recipe/stone_hoe.json \
	data/minecraft/recipe/stone_pickaxe.json \
	data/minecraft/recipe/stone_shovel.json \
	data/minecraft/recipe/stone_sword.json \
	data/minecraft/recipe/tripwire_hook.json \
	data/minecraft/tags/block/needs_stone_tool.json \
	#assets/minecraft/models/block/light_weighted_pressure_plate_down.json \
	#assets/minecraft/models/block/light_weighted_pressure_plate.json \
	#assets/minecraft/models/block/polished_blackstone_button_inventory.json \
	#assets/minecraft/models/block/polished_blackstone_button.json \
	#assets/minecraft/models/block/polished_blackstone_button_pressed.json \
	#assets/minecraft/textures/block/iron_door_bottom.png \
	#assets/minecraft/textures/block/iron_door_top.png \
	#assets/minecraft/textures/block/iron_trapdoor.png \
	#assets/minecraft/textures/item/iron_door.png \
	#data/minecraft/recipe/iron_door.json \
	#data/minecraft/recipe/iron_trapdoor_copper_overhaul.json \
	#data/minecraft/recipe/light_weighted_pressure_plate_copper_overhaul.json \
	#data/minecraft/recipe/polished_blackstone_button.json \

copper_tech_more_FILES := $(DEFAULT_DATA_FILES) \
	assets/minecraft/models/block/dispenser.json \
	assets/minecraft/models/block/dispenser_vertical.json \
	assets/minecraft/models/block/dropper.json \
	assets/minecraft/models/block/dropper_vertical.json \
	assets/minecraft/models/block/observer_copper_tech.json \
	assets/minecraft/models/block/observer_on_copper_tech.json \
	assets/minecraft/textures/block/dispenser_front.png \
	assets/minecraft/textures/block/dispenser_front_vertical.png \
	assets/minecraft/textures/block/dispenser_side.png \
	assets/minecraft/textures/block/dropper_front.png \
	assets/minecraft/textures/block/dropper_front_vertical.png \
	assets/minecraft/textures/block/observer_back_on_copper.png \
	assets/minecraft/textures/block/observer_back_copper.png \
	assets/minecraft/textures/block/observer_front_on_copper.png \
	assets/minecraft/textures/block/observer_front_copper.png \
	assets/minecraft/textures/block/observer_side_on_copper.png \
	assets/minecraft/textures/block/observer_side_copper.png \
	assets/minecraft/textures/block/observer_top_copper.png \
	data/minecraft/recipe/dispenser_copper_tech_more.json \
	data/minecraft/recipe/dropper.json \
	data/minecraft/recipe/observer_copper_tech_more.json \

copper_pistons_FILES := $(DEFAULT_DATA_FILES) \
	assets/minecraft/models/block/piston_head_short_sticky.json \
	assets/minecraft/models/block/piston_head_sticky.json \
	assets/minecraft/models/block/sticky_piston_inventory.json \
	assets/minecraft/models/block/sticky_piston.json \
	assets/minecraft/textures/block/piston_side.png \
	assets/minecraft/textures/block/piston_side_sticky.png \
	assets/minecraft/textures/block/piston_top.png \
	assets/minecraft/textures/block/piston_top_sticky.png \
	data/minecraft/recipe/piston.json \

copper_tech_FILES := $(DEFAULT_DATA_FILES) \
	$(wildcard assets/minecraft/lang/*_copper_tech.json) \
	assets/minecraft/models/block/lever.json \
	assets/minecraft/models/block/lever_on.json \
	assets/minecraft/textures/block/copper_block_lever.png \
	assets/minecraft/textures/block/powered_rail_on.png \
	assets/minecraft/textures/block/powered_rail.png \
	data/minecraft/recipe/lever.json \
	data/minecraft/recipe/powered_rail.json \
	#assets/minecraft/textures/block/activator_rail_on.png \
	#assets/minecraft/textures/block/activator_rail.png \

buce-data/heads/*.loot_table.json.yaml: buce-data/heads/heads.dat

heads_fae_FILES := $(DEFAULT_DATA_FILES) \
	data/buce/loot_table/heads/fae.json \
	data/minecraft/loot_table/blocks/player_head.json \
	data/minecraft/loot_table/gameplay/cat_morning_gift.json \

data/minecraft/loot_table/gameplay/hero_of_the_village/%_gift.json.yaml: buce-data/heads/heads.dat
	./bin/update-villager-gifts.sh

heads_golem_FILES := $(DEFAULT_DATA_FILES) \
	$(shell find data/minecraft/loot_table/gameplay/hero_of_the_village -type f | ./bin/ext2dir) \
	data/minecraft/loot_table/blocks/player_head.json \

heads_player_FILES := $(DEFAULT_DATA_FILES) \
	data/minecraft/loot_table/blocks/player_head.json \
	data/minecraft/loot_table/entities/player.json \
	#data/buce/loot_table/heads/ancients.json \

escape_end_FILES := $(DEFAULT_DATA_FILES) \
	$(shell find buce-data/escape/end -type f | ./bin/ext2dir) \

escape_nether_FILES := $(DEFAULT_DATA_FILES) \
	$(shell find buce-data/escape/nether -type f | ./bin/ext2dir) \
	data/minecraft/tags/block/nether_platform_column_replaceables.json \
	data/minecraft/tags/function/load_escape_nether.json \

escape_grind_FILES := $(DEFAULT_DATA_FILES) \
	$(shell find buce-data/escape/grind -type f | ./bin/ext2dir) \
	data/buce/function/var.mcfunction \
	data/buce/loot_table/loot_overhaul/treasure_seeds.json \
	data/buce/recipe/escape/grind/grindstone.json \
	data/minecraft/loot_table/blocks/crying_obsidian_escape_grind.json \
	data/minecraft/loot_table/chests/end_city_treasure.json \
	data/minecraft/tags/function/load_escape_grind.json \
	data/minecraft/tags/function/respawn_end.json \
	data/minecraft/tags/function/respawn_nether.json \
	#data/buce/advancement/mythic/root.json \
	#data/buce/recipe/mythic/smithing/searching.json \
	#data/minecraft/tags/worldgen/structure/seeking_located.json \
	#$(shell find buce-data/mythic/searching -type f | ./bin/ext2dir) \
	#data/minecraft/loot_table/entities/endermite.json \

locomotive_FILES := $(DEFAULT_DATA_FILES) \
	$(shell find buce-data/locomotive -type f | ./bin/ext2dir) \
	data/minecraft/recipe/activator_rail.json \
	data/minecraft/recipe/detector_rail.json \

lichdom_FILES := $(DEFAULT_DATA_FILES) \
	data/minecraft/tags/function/load_lichdom.json \
	data/minecraft/tags/function/tick_lichdom.json \
	data/lichdom/function/fixme/load.mcfunction \
	data/lichdom/function/fixme/tick.mcfunction \
	data/lichdom/tags/function/death.json \
	data/lichdom/tags/entity_type/undead.json \
	data/lichdom/tags/entity_type/has_blood.json \
	data/lichdom/function/load.mcfunction \
	data/lichdom/function/tick.mcfunction \
	data/lichdom/function/death.mcfunction \
	data/lichdom/function/craft_phylactery.mcfunction \
	data/lichdom/function/craft_pedestal.mcfunction \
	data/lichdom/function/finish_pedestal.mcfunction \
	data/lichdom/function/pedestal_respawn.mcfunction \
	data/lichdom/function/tick_lich.mcfunction \
	data/lichdom/function/tick_vampire.mcfunction \
	data/lichdom/function/tick_bunny.mcfunction \
	data/lichdom/function/tick_turtle.mcfunction \
	data/lichdom/function/tick_bat.mcfunction \
	data/lichdom/function/tick_rabbit.mcfunction \
	data/lichdom/function/rot_food.mcfunction \
	data/lichdom/function/lich_form.mcfunction \
	data/lichdom/function/vampire_form.mcfunction \
	data/lichdom/function/bunny_form.mcfunction \
	data/lichdom/function/turtle_form.mcfunction \
	data/lichdom/function/reset_form.mcfunction \
	data/lichdom/function/steal_unlife_1.mcfunction \
	data/lichdom/function/steal_unlife_2.mcfunction \
	data/lichdom/function/steal_unlife_3.mcfunction \
	data/lichdom/function/steal_unlife_4.mcfunction \
	data/lichdom/function/drink_blood_1.mcfunction \
	data/lichdom/function/drink_blood_2.mcfunction \
	data/lichdom/function/drink_blood_3.mcfunction \
	data/lichdom/function/drink_blood_4.mcfunction \
	data/lichdom/function/test.mcfunction \
	data/lichdom/advancement/lichdom.json \
	data/lichdom/advancement/craft_pedestal.json \
	data/lichdom/advancement/craft_phylactery.json \
	data/lichdom/advancement/become_bunny.json \
	data/lichdom/advancement/become_lich.json \
	data/lichdom/advancement/become_turtle.json \
	data/lichdom/advancement/become_vampire.json \
	data/lichdom/advancement/lich_form.json \
	data/lichdom/advancement/vampire_form.json \
	data/lichdom/advancement/bunny_form.json \
	data/lichdom/advancement/turtle_form.json \
	data/lichdom/advancement/steal_unlife_1.json \
	data/lichdom/advancement/steal_unlife_2.json \
	data/lichdom/advancement/steal_unlife_3.json \
	data/lichdom/advancement/steal_unlife_4.json \
	data/lichdom/advancement/drink_blood_1.json \
	data/lichdom/advancement/drink_blood_2.json \
	data/lichdom/advancement/drink_blood_3.json \
	data/lichdom/advancement/drink_blood_4.json \

test_FILES = \
	# nothing

.PHONY: rpacks
rpacks: $(RESOURCEPACKFILES)

.PHONY: dpacks
dpacks: $(DATAPACKFILES)

.PHONY: list
list:
	@printf '%s\n' $(PACKFILES)

.PHONY: rlist
rlist:
	@printf '%s\n' $(RESOURCEPACKFILES)

.PHONY: dlist
dlist:
	@printf '%s\n' $(DATAPACKFILES)

.PHONY: drlist
drlist:
	@printf '%s\n' $(DATARESOURCEPACKFILES)

data/buce/loot_table/%.json: buce-data/%.loot_table.json
	mkdir -p $(dir $@)
	cp -v $< $@

data/buce/function/%.mcfunction: buce-data/%.function.mcfunction
	mkdir -p $(dir $@)
	cp -v $< $@

data/buce/advancement/%.json: buce-data/%.advancement.json
	mkdir -p $(dir $@)
	cp -v $< $@

data/buce/item_modifier/%.json: buce-data/%.item_modifier.json
	mkdir -p $(dir $@)
	cp -v $< $@

data/buce/predicate/%.json: buce-data/%.predicate.json
	mkdir -p $(dir $@)
	cp -v $< $@

data/buce/recipe/%.json: buce-data/%.recipe.json
	mkdir -p $(dir $@)
	cp -v $< $@

data/buce/tags/entity_type/%.json: buce-data/%.entity_type.tag.json
	mkdir -p $(dir $@)
	cp -v $< $@

data/buce/tags/block/%.json: buce-data/%.block.tag.json
	mkdir -p $(dir $@)
	cp -v $< $@

data/buce/tags/item/%.json: buce-data/%.item.tag.json
	mkdir -p $(dir $@)
	cp -v $< $@

data/buce/tags/enchantment/%.json: buce-data/%.enchantment.tag.json
	mkdir -p $(dir $@)
	cp -v $< $@

data/buce/tags/function/%.json: buce-data/%.function.tag.json
	mkdir -p $(dir $@)
	cp -v $< $@

data/buce/worldgen/processor_list/%.json: buce-data/%.processor_list.worldgen.json
	mkdir -p $(dir $@)
	cp -v $< $@

data/buce/structure/%.nbt: buce-data/%.structure.nbt
	mkdir -p $(dir $@)
	cp -v $< $@

data/buce/dimension_type/%.json: buce-data/%.dimension_type.json
	mkdir -p $(dir $@)
	cp -v $< $@

data/buce/dimension/%.json: buce-data/%.dimension.json
	mkdir -p $(dir $@)
	cp -v $< $@

data/buce/enchantment/%.json: buce-data/%.enchantment.json
	mkdir -p $(dir $@)
	cp -v $< $@

data/minecraft/tags/block/unmineable.json: data/minecraft/tags/block/mineable/*.json

# set mccurly options
MCCURLY_FN_PATH_FMT := %s-data/%s.function.mcfunction
MCCURLY_PREPROCESSOR := sempl
MCCURLY_STRIP_EXT := \.mccurly
export MCCURLY_FN_PATH_FMT MCCURLY_PREPROCESSOR MCCURLY_STRIP_EXT

MCCURLY_TARGETS := $(shell cat cache/mccurly.files)
$(MCCURLY_TARGETS): $(shell find buce-data -name \*.mccurly)
	find buce-data -name \*.mccurly -exec ./bin/mccurly {} + | sort -u > cache/mccurly.files

.PHONY: mccurly
mccurly: $(MCCURLY_TARGETS)

%.function.mcfunction: %.function.mcfunction.mccurly

# rebuild all templates when latest.txt updates
TEMPLATES = $(shell find * -name \*.sempl)
$(TEMPLATES:.sempl=): cache/latest.txt

%.yaml: %.yaml.sempl
	sempl $< $@

%.json: %.json.sempl
	sempl $< $@

%.asciidoc: %.asciidoc.sempl
	sempl $< $@

meta/%.mcmeta: meta/%.mcmeta.sempl
	sempl $< $@

buce-data/%/root.advancement.json: buce-data/%/root.advancement.json.sempl meta/%.mcmeta
	sempl $< $@

%.json: %.json.yaml data/minecraft/loot_table/loot_table.j2
	j2 data/minecraft/loot_table/loot_table.j2 $< -o $@

test.zip: $(test_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

painting_overhaul.zip: $(painting_overhaul_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

note_guide.zip: $(note_guide_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

note_guide_adv.zip: $(note_guide_adv_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

brew_guide.zip: $(brew_guide_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

brew_guide_darkmode.zip: $(brew_guide_darkmode_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

tech_arrows.zip: $(tech_arrows_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

duck.zip: $(duck_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

ravager.zip: $(ravager_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

villager_mech.zip: $(villager_mech_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

candystrider.zip: $(candystrider_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

pig_armor.zip: $(pig_armor_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

ore_types.zip: $(ore_types_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

discreet_pumpkin.zip: $(discreet_pumpkin_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

classic_oak.zip: $(classic_oak_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

classic_netherrack.zip: $(classic_netherrack_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

classic_lava.zip: $(classic_lava_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

classic_obsidian.zip: $(classic_obsidian_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

classic_lapis.zip: $(classic_lapis_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

classic_rose.zip: $(classic_rose_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

classic_food.zip: $(classic_food_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

retronetherrack.zip: $(retronetherrack_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

retroiron.zip: $(retroiron_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

classic_moo.zip: $(classic_moo_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

classic_twang.zip: $(classic_twang_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

classic_sploosh.zip: $(classic_sploosh_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

classic_crunch.zip: $(classic_crunch_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

discreet_cart.zip: $(discreet_cart_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

discreet_hrrm.zip: $(discreet_hrrm_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

discreet_meow.zip: $(discreet_meow_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

gardener_endermen.zip: $(gardener_endermen_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

illusory_trader.zip: $(illusory_trader_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

heirlooms.zip: $(heirlooms_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

oven_brick.zip: $(oven_brick_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

oven_tier.zip: $(oven_tier_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

hover_mode.zip: $(hover_mode_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

climbable.zip: $(climbable_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

waterproof_tech.zip: $(waterproof_tech_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

acclimated.zip: $(acclimated_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

aggro_bastions.zip: $(aggro_bastions_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

antidote.zip: $(antidote_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

network_deep.zip: $(network_deep_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

network_nether.zip: $(network_nether_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

no_treasure_maps.zip: $(no_treasure_maps_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

blue_fire.zip: $(blue_fire_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

farmable.zip: $(farmable_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

frienderchest.zip: $(frienderchest_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

global_effects.zip: $(global_effects_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

bulbs.zip: $(bulbs_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

crafter.zip: $(crafter_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

crafting_loot.zip: $(crafting_loot_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

crafting_colorful.zip: $(crafting_colorful_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

crafting_elixir.zip: $(crafting_elixir_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

crafting_snack.zip: $(crafting_snack_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

crafting_plentiful.zip: $(crafting_plentiful_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

crafting_workstation.zip: $(crafting_workstation_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

cutting_declutter.zip: $(cutting_declutter_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

cutting_smooth_cracked.zip: $(cutting_smooth_cracked_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

crafting_unpacked.zip: $(crafting_unpacked_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

crafting_shell_box.zip: $(crafting_shell_box_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

cutting_wood.zip: $(cutting_wood_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

curated_bonus_chest.zip: $(curated_bonus_chest_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

loot_overhaul.zip: $(loot_overhaul_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

loot_overhaul_treasure_barrels.zip: $(loot_overhaul_treasure_barrels_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

starter_bonus_box.zip: $(starter_bonus_box_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

starter_bonus_chest.zip: $(starter_bonus_chest_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

wandering_loot.zip: $(wandering_loot_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

debugless.zip: $(debugless_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

dragonproof.zip: $(dragonproof_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

leashed.zip: $(leashed_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

mineable.zip: $(mineable_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

archived.zip: $(archived_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

elemental.zip: $(elemental_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

enchanted.zip: $(enchanted_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

worldgen_anti.zip: $(worldgen_anti_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

worldgen_apocalypse.zip: $(worldgen_apocalypse_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

worldgen_moonlit.zip: $(worldgen_moonlit_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

worldgen_overworld.zip: $(worldgen_overworld_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

worldgen_desert_breeze.zip: $(worldgen_desert_breeze_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

worldgen_sandy_husk.zip: $(worldgen_sandy_husk_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

worldgen_trees.zip: $(worldgen_trees_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

dripblock.zip: $(dripblock_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

speedy_paths.zip: $(speedy_paths_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

smart_allays.zip: $(smart_allays_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

shearless.zip: $(shearless_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

poseable.zip: $(poseable_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

custom_items.zip: $(custom_items_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

phantasmal.zip: $(phantasmal_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

phantasmal_end.zip: $(phantasmal_end_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

breeding_overhaul.zip: $(breeding_overhaul_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

eyes_of_seeking.zip: $(eyes_of_seeking_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

more_cutting.zip: $(more_cutting_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

copper_pistons.zip: $(copper_pistons_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

copper_overhaul.zip: $(copper_overhaul_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

copper_tech_more.zip: $(copper_tech_more_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

copper_tech.zip: $(copper_tech_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

more_shulker_shells.zip: $(more_shulker_shells_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

heads_fae.zip: $(heads_fae_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

heads_golem.zip: $(heads_golem_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

heads_player.zip: $(heads_player_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

escape_end.zip: $(escape_end_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

escape_nether.zip: $(escape_nether_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

escape_grind.zip: $(escape_grind_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

locomotive.zip: $(locomotive_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

lichdom.zip: $(lichdom_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

starter_bed.zip: $(starter_bed_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

starter_book.zip: $(starter_book_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

starter_bucket.zip: $(starter_bucket_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

starter_map.zip: $(starter_map_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

starter_shulker.zip: $(starter_shulker_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

starter_spyglass.zip: $(starter_spyglass_FILES)
	cp meta/$(@:.zip=.png) pack.png
	sempl meta/$(@:.zip=.mcmeta.sempl) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

.PHONY: install
MCDIR     = $(HOME)/.minecraft
install: $(RESOURCEPACKFILES) $(DATAPACKFILES)
	cp $(RESOURCEPACKFILES) $(MCDIR)/resourcepacks
	mkdir -p $(MCDIR)/datapacks
	cp $(DATAPACKFILES) $(MCDIR)/datapacks

.PHONY: uninstall
uninstall:
	cd $(MCDIR)/resourcepacks && rm -f $(PACKFILES)

.PHONY: mantrid
mantrid: $(RESOURCEPACKFILES) $(DATAPACKFILES)
	rsync -auv $(RESOURCEPACKFILES) mantrid:$(MCDIR)/resourcepacks
	rsync -auv $(DATAPACKFILES) mantrid:$(MCDIR)/datapacks

.PHONY: update
update:
	@echo Extracting necessary folders from new jar
	find ./bin/update-* -exec {} \;
	@echo Copying new loot tables to orig.new folder
	mkdir -p data/minecraft/loot_table/orig.new
	rsync -a `./bin/latest`.jar/data/minecraft/loot_table/{archaeology,chests,gameplay} data/minecraft/loot_table/orig.new/
	@echo Rebuilding everything
	touch $(TEMPLATES)
	make -B all clean
	git status
	@echo Run '`git diff`' to review changes

.PHONY: release
release: $(PACKFILES)
	git release --new-ver=`./bin/newver` $^

.PHONY: clean
CLEAN_TARGETS := $(PACKFILES) data/buce pack.mcmeta pack.png test.zip \
	data/minecraft/loot_table/*.json \
	data/minecraft/loot_table/chests/*.json \
	data/minecraft/loot_table/chests/*/*.json \
	data/minecraft/loot_table/gameplay/*.json \
	data/minecraft/loot_table/gameplay/*/*.json \
	data/minecraft/loot_table/subtables/*.json \
	data/minecraft/loot_table/subtables/*/*.json \

clean:
	rm -rf $(CLEAN_TARGETS)
	git checkout data/buce/loot_table/mythic/chromatic/fireworks.json

export PACKFILES DATARESOURCEPACKFILES RESOURCEPACKFILES DATAPACKFILES
.PHONY: check
check:
	@echo Running tests
	find ./bin/test-* -print0 | xargs -0 -n1 bash

