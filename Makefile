
DATARESOURCEPACKFILES = \
	copper_pistons.zip \
	copper_tech.zip \
	more_copper_tech.zip \
	path_strider.zip \
	pig_armor.zip \

RESOURCEPACKFILES = \
	$(DATARESOURCEPACKFILES) \
	brew_guide_darkmode.zip \
	brew_guide.zip \
	classic_crunch.zip \
	classic_food.zip \
	classic_gravel.zip \
	classic_lapis.zip \
	classic_lava.zip \
	classic_moo.zip \
	classic_netherrack.zip \
	classic_oak.zip \
	classic_obsidian.zip \
	classic_rose.zip \
	classic_sploosh.zip \
	classic_twang.zip \
	discreet_pumpkin.zip \
	more_cutting.zip \
	note_guide.zip \
	ore_types.zip \
	painting_overhaul.zip \
	ravager.zip \
	spellsmithing_guide.zip \
	tech_arrows.zip \
	villager_mech.zip \

DATAPACKFILES = \
	$(DATARESOURCEPACKFILES) \
	aggro_bastions.zip \
	blue_fire.zip \
	boss_loot.zip \
	breeding_overhaul.zip \
	climbable.zip \
	decor_loot.zip \
	dragonproof.zip \
	escape_end.zip \
	escape_grind.zip \
	escape_nether.zip \
	food_loot.zip \
	fortunate_crops.zip \
	fortunate_jungle.zip \
	gardener_endermen.zip \
	glow_squid_glamers.zip \
	invis_squid_glamer.zip \
	lichdom.zip \
	loot_overhaul.zip \
	lose_hp_xp.zip \
	mineable.zip \
	modern_loot.zip \
	more_cutting.zip \
	eyes_of_seeking.zip \
	more_shulker_shells.zip \
	mythic_relics.zip \
	no_treasure_maps.zip \
	phantasmal_end.zip \
	phantasmal.zip \
	plant_loot.zip \
	relic_loot.zip \
	seasonal_loot.zip \
	shearless.zip \
	starter_bed.zip \
	starter_bonus_chest.zip \
	starter_book.zip \
	starter_bucket.zip \
	starter_map.zip \
	starter_relic.zip \
	starter_shulker.zip \
	starter_spyglass.zip \
	warmer_striders.zip \
	waterproof_tech.zip \

PACKFILES = $(RESOURCEPACKFILES) $(DATAPACKFILES)
MCDIR     = $(HOME)/.minecraft

CLEAN_TARGETS := $(PACKFILES) data/buce pack.mcmeta pack.png test.zip \
	data/minecraft/loot_tables/*.json \
	data/minecraft/loot_tables/chests/*.json \
	data/minecraft/loot_tables/chests/*/*.json \
	data/minecraft/loot_tables/gameplay/*.json \
	data/minecraft/loot_tables/gameplay/*/*.json \
	data/minecraft/loot_tables/subtables/*.json \
	data/minecraft/loot_tables/subtables/*/*.json \
	buce-data/relic/all.loot_table.json.yaml \
	#buce-data/*/subtables/*.json

# needed by all pack targets
DEFAULT_RESOURCE_FILES = LICENSE.txt
DEFAULT_DATA_FILES = LICENSE.txt data/buce/advancements/root.json

lcg_FILES := \
	data/lcg/functions/load.mcfunction \
	data/lcg/functions/random.mcfunction \
	data/lcg/functions/get_seed.mcfunction \

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
	assets/minecraft/models/item/note_block.json \
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

villager_mech_FILES := $(DEFAULT_RESOURCE_FILES) \
	assets/minecraft/textures/entity/iron_golem/iron_golem.png \
	assets/minecraft/textures/entity/iron_golem/iron_golem_crackiness_low.png \
	assets/minecraft/textures/entity/iron_golem/iron_golem_crackiness_medium.png \
	assets/minecraft/textures/entity/iron_golem/iron_golem_crackiness_high.png \

candystrider_FILES := $(DEFAULT_RESOURCE_FILES) \
	assets/minecraft/textures/entity/strider/strider_cold.png \
	assets/minecraft/textures/entity/strider/strider.png \

pig_armor_FILES := $(DEFAULT_RESOURCE_FILES) \
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

classic_gravel_FILES := $(DEFAULT_RESOURCE_FILES) \
	assets/minecraft/textures/block/gravel.png \

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

spellsmithing_guide_FILES := $(DEFAULT_RESOURCE_FILES) \
	$(wildcard assets/minecraft/models/item/armor_stand*.json) \
	$(wildcard assets/minecraft/textures/item/armor_stand_*.png) \
	assets/minecraft/models/item/invis_item_frame.json \
	assets/minecraft/models/item/invis_light.json \
	assets/minecraft/models/item/item_frame.json \
	assets/minecraft/models/item/light.json \
	assets/minecraft/textures/gui/container/smithing.png \
	assets/minecraft/textures/item/invis_item_frame.png \
	assets/minecraft/textures/item/invis_light.png \

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

gardener_endermen_FILES := $(DEFAULT_DATA_FILES) \
	data/minecraft/tags/blocks/enderman_holdable.json \
	data/buce/advancements/gardener_endermen.json \

climbable_FILES := $(DEFAULT_DATA_FILES) \
	data/minecraft/tags/blocks/climbable.json \
	data/buce/advancements/climbable.json \

path_strider_FILES := $(DEFAULT_DATA_FILES) \
	$(wildcard assets/minecraft/lang/*_path_strider.json) \
	assets/minecraft/sounds.json \
	assets/minecraft/textures/particle/soul_0.png \
	assets/minecraft/textures/particle/soul_10.png \
	assets/minecraft/textures/particle/soul_1.png \
	assets/minecraft/textures/particle/soul_2.png \
	assets/minecraft/textures/particle/soul_3.png \
	assets/minecraft/textures/particle/soul_4.png \
	assets/minecraft/textures/particle/soul_5.png \
	assets/minecraft/textures/particle/soul_6.png \
	assets/minecraft/textures/particle/soul_7.png \
	assets/minecraft/textures/particle/soul_8.png \
	assets/minecraft/textures/particle/soul_9.png \
	data/buce/advancements/path_strider.json \
	data/minecraft/tags/blocks/soul_speed_blocks.json \

waterproof_tech_FILES := $(DEFAULT_DATA_FILES) \
	data/minecraft/tags/blocks/signs.json \
	data/buce/advancements/waterproof_tech.json \

aggro_bastions_FILES := $(DEFAULT_DATA_FILES) \
	data/minecraft/tags/blocks/guarded_by_piglins.json \
	data/buce/advancements/aggro_bastions.json \

warmer_striders_FILES := $(DEFAULT_DATA_FILES) \
	data/minecraft/tags/blocks/strider_warm_blocks.json \

no_treasure_maps_FILES := $(DEFAULT_DATA_FILES) \
	data/minecraft/loot_tables/chests/shipwreck_map_no_treasure_maps.json \
	data/buce/advancements/no_treasure_maps.json \

blue_fire_FILES := $(DEFAULT_DATA_FILES) \
	data/minecraft/tags/blocks/soul_fire_base_blocks.json \
	data/buce/advancements/blue_fire.json \

fortunate_jungle_FILES := $(DEFAULT_DATA_FILES) \
	data/minecraft/loot_tables/blocks/jungle_leaves.json \
	data/buce/advancements/fortunate_jungle.json \

fortunate_crops_FILES := $(DEFAULT_DATA_FILES) \
	data/minecraft/loot_tables/blocks/wheat.json \
	data/minecraft/loot_tables/blocks/beetroots.json \
	data/buce/advancements/fortunate_crops.json \

lose_hp_xp_FILES := $(DEFAULT_DATA_FILES) \
	$(shell find buce-data/lose_hp_xp -type f | ./bin/ext2dir) \
	data/buce/functions/var.mcfunction \
	data/minecraft/tags/functions/load_lose_hp_xp.json \

relic_FILES := $(DEFAULT_DATA_FILES) \
	$(shell find buce-data/relic -type f | ./bin/ext2dir) \
	$(spellsmithing_guide_FILES) \
	data/buce/loot_tables/relic/all.json \

loot_overhaul_FILES := $(DEFAULT_DATA_FILES) \
	$(shell find buce-data/loot_overhaul -type f | ./bin/ext2dir) \
	$(wildcard data/minecraft/tags/worldgen/structure/on_*_maps.json) \
	$(relic_FILES) \
	data/buce/loot_tables/mythic/stormcalling/heart_of_the_sea.json \
	data/minecraft/tags/functions/load_loot_overhaul.json \
	data/minecraft/loot_tables/chests/abandoned_mineshaft.json \
	data/minecraft/loot_tables/chests/bastion_bridge.json \
	data/minecraft/loot_tables/chests/bastion_hoglin_stable.json \
	data/minecraft/loot_tables/chests/bastion_other.json \
	data/minecraft/loot_tables/chests/bastion_treasure.json \
	data/minecraft/loot_tables/chests/buried_treasure.json \
	data/minecraft/loot_tables/chests/desert_pyramid.json \
	data/minecraft/loot_tables/chests/end_city_treasure.json \
	data/minecraft/loot_tables/chests/igloo_chest.json \
	data/minecraft/loot_tables/chests/jungle_temple_dispenser.json \
	data/minecraft/loot_tables/chests/jungle_temple.json \
	data/minecraft/loot_tables/chests/nether_bridge.json \
	data/minecraft/loot_tables/chests/pillager_outpost.json \
	data/minecraft/loot_tables/chests/ruined_portal.json \
	data/minecraft/loot_tables/chests/shipwreck_map.json \
	data/minecraft/loot_tables/chests/shipwreck_supply.json \
	data/minecraft/loot_tables/chests/shipwreck_treasure.json \
	data/minecraft/loot_tables/chests/simple_dungeon.json \
	data/minecraft/loot_tables/chests/spawn_bonus_chest.json \
	data/minecraft/loot_tables/chests/stronghold_corridor.json \
	data/minecraft/loot_tables/chests/stronghold_crossing.json \
	data/minecraft/loot_tables/chests/stronghold_library.json \
	data/minecraft/loot_tables/chests/underwater_ruin_big.json \
	data/minecraft/loot_tables/chests/underwater_ruin_small.json \
	data/minecraft/loot_tables/chests/village/village_armorer.json \
	data/minecraft/loot_tables/chests/village/village_butcher.json \
	data/minecraft/loot_tables/chests/village/village_cartographer.json \
	data/minecraft/loot_tables/chests/village/village_desert_house.json \
	data/minecraft/loot_tables/chests/village/village_fisher.json \
	data/minecraft/loot_tables/chests/village/village_fletcher.json \
	data/minecraft/loot_tables/chests/village/village_mason.json \
	data/minecraft/loot_tables/chests/village/village_plains_house.json \
	data/minecraft/loot_tables/chests/village/village_savanna_house.json \
	data/minecraft/loot_tables/chests/village/village_shepherd.json \
	data/minecraft/loot_tables/chests/village/village_snowy_house.json \
	data/minecraft/loot_tables/chests/village/village_taiga_house.json \
	data/minecraft/loot_tables/chests/village/village_tannery.json \
	data/minecraft/loot_tables/chests/village/village_temple.json \
	data/minecraft/loot_tables/chests/village/village_toolsmith.json \
	data/minecraft/loot_tables/chests/village/village_weaponsmith.json \
	data/minecraft/loot_tables/chests/woodland_mansion.json \
	data/minecraft/loot_tables/gameplay/fishing/fish.json \
	data/minecraft/loot_tables/gameplay/fishing/junk.json \
	data/minecraft/loot_tables/gameplay/fishing/treasure.json \
	data/minecraft/loot_tables/gameplay/piglin_bartering.json \
	data/minecraft/recipes/diamond_horse_armor.json \
	data/minecraft/recipes/gold_horse_armor.json \
	data/minecraft/recipes/iron_horse_armor.json \
	data/minecraft/recipes/nametag.json \
	data/minecraft/recipes/piglin_banner_pattern.json \
	data/minecraft/recipes/saddle.json \
	data/minecraft/tags/items/creeper_drop_music_discs.json \
	data/minecraft/tags/items/starter_item.json \

plant_loot_FILES := $(DEFAULT_DATA_FILES) \
	$(shell ls buce-data/loot_addons/plant_loot* | ./bin/ext2dir) \

relic_loot_FILES := $(DEFAULT_DATA_FILES) \
	$(shell ls buce-data/loot_addons/relic_loot* | ./bin/ext2dir) \
	$(relic_FILES) \

mythic_relics_FILES := $(DEFAULT_DATA_FILES) \
	$(shell find buce-data/mythic -type f | ./bin/ext2dir) \
	data/buce/functions/var.mcfunction \
	data/minecraft/tags/functions/load_mythic_relics.json \
	data/minecraft/loot_tables/blocks/deepslate_emerald_ore.json \
	data/minecraft/loot_tables/entities/endermite.json \
	data/minecraft/loot_tables/entities/ghast.json \
	data/minecraft/loot_tables/entities/iron_golem.json \
	data/minecraft/loot_tables/entities/pig.json \
	data/minecraft/loot_tables/entities/silverfish.json \

seasonal_loot_FILES := $(DEFAULT_DATA_FILES) \
	$(shell ls buce-data/loot_addons/seasonal_loot* | ./bin/ext2dir) \

food_loot_FILES := $(DEFAULT_DATA_FILES) \
	$(shell ls buce-data/loot_addons/food_loot* | ./bin/ext2dir) \

decor_loot_FILES := $(DEFAULT_DATA_FILES) \
	$(shell ls buce-data/loot_addons/decor_loot* | ./bin/ext2dir) \

modern_loot_FILES := $(DEFAULT_DATA_FILES) \
	$(shell ls buce-data/loot_addons/modern_loot* | ./bin/ext2dir) \

boss_loot_FILES := $(DEFAULT_DATA_FILES) \
	$(shell find buce-data/boss_loot -type f | ./bin/ext2dir) \
	data/minecraft/tags/functions/load_boss_loot.json \
	data/minecraft/loot_tables/entities/elder_guardian.json \
	data/minecraft/loot_tables/entities/ender_dragon.json \
	data/minecraft/loot_tables/entities/ravager.json \
	data/minecraft/loot_tables/entities/warden.json \
	data/minecraft/loot_tables/entities/wither.json \

starter_relic_FILES := $(DEFAULT_DATA_FILES) \
	$(relic_FILES) \
	$(shell ls buce-data/loot_addons/starter_relic* | ./bin/ext2dir) \

starter_bonus_chest_FILES := $(DEFAULT_DATA_FILES) \
	$(shell ls buce-data/starter_bonus_chest* | ./bin/ext2dir) \

starter_bed_FILES := $(DEFAULT_DATA_FILES) \
	data/minecraft/tags/items/starter_item_starter_bed.json \
	data/buce/advancements/loot_addons/starter_bed.json \

starter_book_FILES := $(DEFAULT_DATA_FILES) \
	data/minecraft/tags/items/starter_item_starter_book.json \
	data/buce/advancements/loot_addons/starter_book.json \

starter_bucket_FILES := $(DEFAULT_DATA_FILES) \
	data/minecraft/tags/items/starter_item_starter_bucket.json \
	data/buce/advancements/loot_addons/starter_bucket.json \

starter_map_FILES := $(DEFAULT_DATA_FILES) \
	data/minecraft/tags/items/starter_item_starter_map.json \
	data/buce/advancements/loot_addons/starter_map.json \

starter_shulker_FILES := $(DEFAULT_DATA_FILES) \
	data/minecraft/tags/items/starter_item_starter_shulker.json \
	data/buce/advancements/loot_addons/starter_shulker.json \

starter_spyglass_FILES := $(DEFAULT_DATA_FILES) \
	data/minecraft/tags/items/starter_item_starter_spyglass.json \
	data/buce/advancements/loot_addons/starter_spyglass.json \

dragonproof_FILES := $(DEFAULT_DATA_FILES) \
	data/buce/advancements/dragonproof.json \
	data/minecraft/tags/blocks/dragon_immune.json \

mineable_FILES := $(DEFAULT_DATA_FILES) \
	data/minecraft/tags/blocks/mineable/axe.json \
	data/minecraft/tags/blocks/mineable/pickaxe.json \
	data/buce/advancements/mineable.json \

shearless_FILES := $(DEFAULT_DATA_FILES) \
	$(shell ./bin/shearless-files) \
	data/minecraft/tags/blocks/mineable/hoe.json \
	data/buce/advancements/shearless.json \

breeding_overhaul_FILES := $(DEFAULT_DATA_FILES) \
	$(shell find buce-data/breeding_overhaul -type f | ./bin/ext2dir) \
	data/minecraft/tags/functions/load_breeding_overhaul.json \
	data/buce/functions/var.mcfunction \

glow_squid_glamers_FILES := $(DEFAULT_DATA_FILES) \
	$(shell find buce-data/illusory/glow_squid -type f | ./bin/ext2dir) \
	data/minecraft/loot_tables/entities/glow_squid.json \

invis_squid_glamer_FILES := $(DEFAULT_DATA_FILES) \
	$(shell find buce-data/illusory/squid -type f | ./bin/ext2dir) \
	data/minecraft/loot_tables/entities/squid.json \

phantasmal_FILES := $(DEFAULT_DATA_FILES) \
	$(shell find buce-data/phantasmal -type f | ./bin/ext2dir) \
	data/buce/functions/var.mcfunction \
	data/minecraft/loot_tables/entities/phantom.json \
	data/minecraft/loot_tables/gameplay/cat_morning_gift.json \
	data/minecraft/tags/functions/load_phantasmal.json \

phantasmal_end_FILES := $(DEFAULT_DATA_FILES) \
	$(shell find buce-data/phantasmal_end -type f | ./bin/ext2dir) \

eyes_of_seeking_FILES := $(DEFAULT_DATA_FILES) \
	data/buce/advancements/eyes_of_seeking.json \
	data/minecraft/tags/worldgen/structure/eye_of_ender_located.json \

more_cutting_FILES := $(DEFAULT_DATA_FILES) \
	$(shell find buce-data/more_cutting -type f | ./bin/ext2dir) \
	$(wildcard assets/minecraft/lang/*_more_cutting.json) \
	$(wildcard data/minecraft/recipes/*_stairs.json) \
	$(wildcard data/minecraft/recipes/*_wood.json) \
	$(wildcard data/minecraft/recipes/*_hyphae.json) \

more_copper_tech_FILES := $(DEFAULT_DATA_FILES) \
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
	data/minecraft/recipes/dispenser.json \
	data/minecraft/recipes/dropper.json \
	data/minecraft/recipes/observer.json \

copper_pistons_FILES := $(DEFAULT_DATA_FILES) \
	assets/minecraft/models/block/piston_head_short_sticky.json \
	assets/minecraft/models/block/piston_head_sticky.json \
	assets/minecraft/models/block/sticky_piston_inventory.json \
	assets/minecraft/models/block/sticky_piston.json \
	assets/minecraft/textures/block/piston_side.png \
	assets/minecraft/textures/block/piston_side_sticky.png \
	assets/minecraft/textures/block/piston_top.png \
	assets/minecraft/textures/block/piston_top_sticky.png \
	data/minecraft/recipes/piston.json \

copper_tech_FILES := $(DEFAULT_DATA_FILES) \
	$(wildcard assets/minecraft/lang/*_copper_tech.json) \
	assets/minecraft/models/block/lever.json \
	assets/minecraft/models/block/lever_on.json \
	assets/minecraft/models/block/light_weighted_pressure_plate_down.json \
	assets/minecraft/models/block/light_weighted_pressure_plate.json \
	assets/minecraft/models/block/polished_blackstone_button_inventory.json \
	assets/minecraft/models/block/polished_blackstone_button.json \
	assets/minecraft/models/block/polished_blackstone_button_pressed.json \
	assets/minecraft/textures/block/copper_block_lever.png \
	assets/minecraft/textures/block/detector_rail_on.png \
	assets/minecraft/textures/block/detector_rail.png \
	assets/minecraft/textures/block/iron_door_bottom.png \
	assets/minecraft/textures/block/iron_door_top.png \
	assets/minecraft/textures/block/iron_trapdoor.png \
	assets/minecraft/textures/block/powered_rail_on.png \
	assets/minecraft/textures/block/powered_rail.png \
	assets/minecraft/textures/item/iron_door.png \
	data/minecraft/recipes/detector_rail.json \
	data/minecraft/recipes/iron_door.json \
	data/minecraft/recipes/iron_trapdoor.json \
	data/minecraft/recipes/lever.json \
	data/minecraft/recipes/light_weighted_pressure_plate.json \
	data/minecraft/recipes/polished_blackstone_button.json \
	data/minecraft/recipes/powered_rail.json \
	#assets/minecraft/textures/block/activator_rail_on.png \
	#assets/minecraft/textures/block/activator_rail.png \

more_shulker_shells_FILES := $(DEFAULT_DATA_FILES) \
	data/minecraft/loot_tables/entities/shulker.json \
	data/buce/advancements/more_shulker_shells.json \

escape_end_FILES := $(DEFAULT_DATA_FILES) \
	data/minecraft/tags/functions/tick_escape_end.json \
	data/escape/functions/end_respawn.mcfunction \
	data/escape/functions/tick_end.mcfunction \
	data/buce/advancements/escape_end.json \

escape_nether_FILES := $(DEFAULT_DATA_FILES) \
	data/minecraft/tags/functions/tick_escape_nether.json \
	data/escape/functions/nether_respawn.mcfunction \
	data/escape/functions/tick_nether.mcfunction \
	data/escape/tags/blocks/airlava.json \
	data/buce/advancements/escape_nether.json \
	data/escape/advancements/kill_wither.json \

escape_grind_FILES := $(DEFAULT_DATA_FILES) \
	data/minecraft/tags/functions/load_escape_grind.json \
	data/minecraft/tags/functions/tick_escape_grind.json \
	data/minecraft/loot_tables/blocks/crying_obsidian_escape_grind.json \
	data/minecraft/loot_tables/chests/end_city_treasure.json \
	data/escape/recipes/grindstone.json \
	data/escape/tags/functions/respawn.json \
	data/escape/functions/load.mcfunction \
	data/escape/functions/tick_grind.mcfunction \
	data/escape/functions/grind_respawn.mcfunction \
	data/escape/functions/locate_city.mcfunction \
	data/buce/advancements/escape_grind.json \

lichdom_FILES := $(DEFAULT_DATA_FILES) \
	data/minecraft/tags/functions/load_lichdom.json \
	data/minecraft/tags/functions/tick_lichdom.json \
	data/lichdom/functions/fixme/load.mcfunction \
	data/lichdom/functions/fixme/tick.mcfunction \
	data/lichdom/tags/functions/death.json \
	data/lichdom/tags/entity_types/undead.json \
	data/lichdom/tags/entity_types/has_blood.json \
	data/lichdom/functions/load.mcfunction \
	data/lichdom/functions/tick.mcfunction \
	data/lichdom/functions/death.mcfunction \
	data/lichdom/functions/craft_phylactery.mcfunction \
	data/lichdom/functions/craft_pedestal.mcfunction \
	data/lichdom/functions/finish_pedestal.mcfunction \
	data/lichdom/functions/pedestal_respawn.mcfunction \
	data/lichdom/functions/tick_lich.mcfunction \
	data/lichdom/functions/tick_vampire.mcfunction \
	data/lichdom/functions/tick_bunny.mcfunction \
	data/lichdom/functions/tick_turtle.mcfunction \
	data/lichdom/functions/tick_bat.mcfunction \
	data/lichdom/functions/tick_rabbit.mcfunction \
	data/lichdom/functions/rot_food.mcfunction \
	data/lichdom/functions/lich_form.mcfunction \
	data/lichdom/functions/vampire_form.mcfunction \
	data/lichdom/functions/bunny_form.mcfunction \
	data/lichdom/functions/turtle_form.mcfunction \
	data/lichdom/functions/reset_form.mcfunction \
	data/lichdom/functions/steal_unlife_1.mcfunction \
	data/lichdom/functions/steal_unlife_2.mcfunction \
	data/lichdom/functions/steal_unlife_3.mcfunction \
	data/lichdom/functions/steal_unlife_4.mcfunction \
	data/lichdom/functions/drink_blood_1.mcfunction \
	data/lichdom/functions/drink_blood_2.mcfunction \
	data/lichdom/functions/drink_blood_3.mcfunction \
	data/lichdom/functions/drink_blood_4.mcfunction \
	data/lichdom/functions/test.mcfunction \
	data/lichdom/advancements/lichdom.json \
	data/lichdom/advancements/craft_pedestal.json \
	data/lichdom/advancements/craft_phylactery.json \
	data/lichdom/advancements/become_bunny.json \
	data/lichdom/advancements/become_lich.json \
	data/lichdom/advancements/become_turtle.json \
	data/lichdom/advancements/become_vampire.json \
	data/lichdom/advancements/lich_form.json \
	data/lichdom/advancements/vampire_form.json \
	data/lichdom/advancements/bunny_form.json \
	data/lichdom/advancements/turtle_form.json \
	data/lichdom/advancements/steal_unlife_1.json \
	data/lichdom/advancements/steal_unlife_2.json \
	data/lichdom/advancements/steal_unlife_3.json \
	data/lichdom/advancements/steal_unlife_4.json \
	data/lichdom/advancements/drink_blood_1.json \
	data/lichdom/advancements/drink_blood_2.json \
	data/lichdom/advancements/drink_blood_3.json \
	data/lichdom/advancements/drink_blood_4.json \

test_FILES = \
	# nothing

.PHONY: all
all: $(PACKFILES)

.PHONY: rpacks
rpacks: $(RESOURCEPACKFILES)

.PHONY: dpacks
dpacks: $(DATAPACKFILES)

data/minecraft/loot_tables/%.json: minecraft-data/%.loot_table.json
	mkdir -p $(dir $@)
	cp -v $< $@

data/buce/loot_tables/%.json: buce-data/%.loot_table.json
	mkdir -p $(dir $@)
	cp -v $< $@

data/minecraft/functions/%.mcfunction: minecraft-data/%.function.mcfunction
	mkdir -p $(dir $@)
	cp -v $< $@

data/buce/functions/%.mcfunction: buce-data/%.function.mcfunction
	mkdir -p $(dir $@)
	cp -v $< $@

data/minecraft/advancements/%.json: minecraft-data/%.advancement.json
	mkdir -p $(dir $@)
	cp -v $< $@

data/buce/advancements/%.json: buce-data/%.advancement.json
	mkdir -p $(dir $@)
	cp -v $< $@

data/minecraft/predicates/%.json: minecraft-data/%.predicate.json
	mkdir -p $(dir $@)
	cp -v $< $@

data/buce/predicates/%.json: buce-data/%.predicate.json
	mkdir -p $(dir $@)
	cp -v $< $@

data/minecraft/recipes/%.json: minecraft-data/%.recipe.json
	mkdir -p $(dir $@)
	cp -v $< $@

data/buce/recipes/%.json: buce-data/%.recipe.json
	mkdir -p $(dir $@)
	cp -v $< $@

data/minecraft/tags/blocks/%.json: minecraft-data/%.block.tag.json
	mkdir -p $(dir $@)
	cp -v $< $@

data/buce/tags/blocks/%.json: buce-data/%.block.tag.json
	mkdir -p $(dir $@)
	cp -v $< $@

data/minecraft/tags/items/%.json: minecraft-data/%.item.tag.json
	mkdir -p $(dir $@)
	cp -v $< $@

data/buce/tags/items/%.json: buce-data/%.item.tag.json
	mkdir -p $(dir $@)
	cp -v $< $@

data/minecraft/tags/functions/%.json: minecraft-data/%.function.tag.json
	mkdir -p $(dir $@)
	cp -v $< $@

data/buce/tags/functions/%.json: buce-data/%.function.tag.json
	mkdir -p $(dir $@)
	cp -v $< $@

#data/minecraft/loot_tables/%.json: data/minecraft/loot_tables/%.json.yaml data/minecraft/loot_tables/loot_table.j2
#	j2 data/minecraft/loot_tables/loot_table.j2 $< -o $@
#
#data/buce/loot_tables/%.json: data/buce/loot_tables/%.json.yaml data/minecraft/loot_tables/loot_table.j2
#	j2 data/minecraft/loot_tables/loot_table.j2 $< -o $@

%.yaml: %.yaml.sempl
	sempl $< $@

%.json: %.json.sempl
	sempl $< $@

%.json: %.json.yaml data/minecraft/loot_tables/loot_table.j2
	j2 data/minecraft/loot_tables/loot_table.j2 $< -o $@

buce-data/relic/all.loot_table.json.yaml: buce-data/relic/random.loot_table.json.yaml
	sed '/^#/d; 5,$$ s/^      -/  - rolls: 1\n    entries:\n&/' $^ > $@

test.zip: $(test_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

painting_overhaul.zip: $(painting_overhaul_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

note_guide.zip: $(note_guide_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

note_guide_adv.zip: $(note_guide_adv_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

brew_guide.zip: $(brew_guide_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

brew_guide_darkmode.zip: $(brew_guide_darkmode_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

tech_arrows.zip: $(tech_arrows_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

ravager.zip: $(ravager_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

villager_mech.zip: $(villager_mech_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

candystrider.zip: $(candystrider_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

pig_armor.zip: $(pig_armor_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

ore_types.zip: $(ore_types_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

discreet_pumpkin.zip: $(discreet_pumpkin_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

classic_oak.zip: $(classic_oak_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

classic_netherrack.zip: $(classic_netherrack_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

classic_lava.zip: $(classic_lava_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

classic_gravel.zip: $(classic_gravel_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

classic_obsidian.zip: $(classic_obsidian_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

classic_lapis.zip: $(classic_lapis_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

classic_rose.zip: $(classic_rose_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

classic_food.zip: $(classic_food_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

spellsmithing_guide.zip: $(spellsmithing_guide_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

retronetherrack.zip: $(retronetherrack_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

retroiron.zip: $(retroiron_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

classic_moo.zip: $(classic_moo_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

classic_twang.zip: $(classic_twang_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

classic_sploosh.zip: $(classic_sploosh_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

classic_crunch.zip: $(classic_crunch_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

gardener_endermen.zip: $(gardener_endermen_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

climbable.zip: $(climbable_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

path_strider.zip: $(path_strider_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

waterproof_tech.zip: $(waterproof_tech_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

warmer_striders.zip: $(warmer_striders_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

aggro_bastions.zip: $(aggro_bastions_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

no_treasure_maps.zip: $(no_treasure_maps_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

blue_fire.zip: $(blue_fire_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

fortunate_jungle.zip: $(fortunate_jungle_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

fortunate_crops.zip: $(fortunate_crops_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

lose_hp_xp.zip: $(lose_hp_xp_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

loot_overhaul.zip: $(loot_overhaul_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

plant_loot.zip: $(plant_loot_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

starter_relic.zip: $(starter_relic_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

starter_bonus_chest.zip: $(starter_bonus_chest_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

relic_loot.zip: $(relic_loot_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

mythic_relics.zip: $(mythic_relics_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

boss_loot.zip: $(boss_loot_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

seasonal_loot.zip: $(seasonal_loot_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

food_loot.zip: $(food_loot_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

decor_loot.zip: $(decor_loot_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

modern_loot.zip: $(modern_loot_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

dragonproof.zip: $(dragonproof_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

mineable.zip: $(mineable_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

shearless.zip: $(shearless_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

invis_squid_glamer.zip: $(invis_squid_glamer_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

glow_squid_glamers.zip: $(glow_squid_glamers_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

phantasmal.zip: $(phantasmal_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

phantasmal_end.zip: $(phantasmal_end_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

breeding_overhaul.zip: $(breeding_overhaul_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

eyes_of_seeking.zip: $(eyes_of_seeking_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

more_cutting.zip: $(more_cutting_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

copper_pistons.zip: $(copper_pistons_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

more_copper_tech.zip: $(more_copper_tech_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

copper_tech.zip: $(copper_tech_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

more_shulker_shells.zip: $(more_shulker_shells_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

escape_end.zip: $(escape_end_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

escape_nether.zip: $(escape_nether_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

escape_grind.zip: $(escape_grind_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

lichdom.zip: $(lichdom_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

starter_bed.zip: $(starter_bed_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

starter_book.zip: $(starter_book_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

starter_bucket.zip: $(starter_bucket_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

starter_map.zip: $(starter_map_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

starter_shulker.zip: $(starter_shulker_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

starter_spyglass.zip: $(starter_spyglass_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	./bin/ziprename _$(@:.zip=) "" $@

.PHONY: install
install: $(RESOURCEPACKFILES) $(DATAPACKFILES)
	cp $(RESOURCEPACKFILES) $(MCDIR)/resourcepacks
	mkdir -p $(MCDIR)/datapacks
	cp $(DATAPACKFILES) $(MCDIR)/datapacks

.PHONY: mantrid
mantrid: $(RESOURCEPACKFILES) $(DATAPACKFILES)
	rsync -auv $(RESOURCEPACKFILES) mantrid:$(MCDIR)/resourcepacks
	rsync -auv $(DATAPACKFILES) mantrid:$(MCDIR)/datapacks

.PHONY: update
update:
	# extract necessary folders from new jar
	find ./bin/update-* -exec {} \;
	# copy new loot tables to orig.new folder
	mkdir -p data/minecraft/loot_tables/orig.new
	rsync -a `./bin/latest`.jar/data/minecraft/loot_tables/{gameplay,chests} data/minecraft/loot_tables/orig.new/

.PHONY: release
release: $(sort $(RESOURCEPACKFILES) $(DATAPACKFILES) )
	./bin/release $^

.PHONY: uninstall
uninstall:
	cd $(MCDIR)/resourcepacks && rm -f $(PACKFILES)

.PHONY: clean
clean:
	rm -rf $(CLEAN_TARGETS)
	git checkout data/buce/loot_tables/mythic/chromatic/fireworks.json

