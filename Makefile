
RESOURCEPACKFILES = painting_overhaul.zip note_guide.zip brew_guide.zip \
	tech_arrows.zip ravager.zip villager_mech.zip pig_armor.zip ore_types.zip \
	discreet_pumpkin.zip stickier_piston.zip \
	classic_netherrack.zip classic_lava.zip classic_gravel.zip classic_lapis.zip \
	classic_rose.zip classic_food.zip \
	classic_moo.zip classic_twang.zip classic_sploosh.zip classic_crunch.zip
DATAPACKFILES = gardener_endermen.zip climbable.zip \
	no_treasure_maps.zip fortunate_jungle.zip dragonproof.zip \
	mineable.zip shearless.zip breeding_overhaul.zip \
	mother_phantoms.zip phantasmal.zip glow_squid_glamers.zip squid_glamer.zip \
	smooth_cracked_stonecutting.zip lose_hp_xp.zip more_rain.zip \
	loot_overhaul.zip relic_loot.zip more_shulker_shells.zip \
	starter_bed.zip starter_book.zip starter_bucket.zip starter_map.zip \
	starter_shulker.zip starter_relic.zip starter_bonus_chest.zip \
	escape_end.zip escape_nether.zip escape_grind.zip lichdom.zip

PACKFILES = $(RESOURCEPACKFILES) $(DATAPACKFILES)
MCDIR     = $(HOME)/.minecraft

CLEAN_TARGETS := $(PACKFILES) data/bucepack pack.mcmeta pack.png test.zip \
	data/minecraft/loot_tables/*.json \
	data/minecraft/loot_tables/chests/*.json \
	data/minecraft/loot_tables/chests/*/*.json \
	data/minecraft/loot_tables/gameplay/*.json \
	data/minecraft/loot_tables/gameplay/*/*.json \
	data/minecraft/loot_tables/subtables/*.json \
	data/minecraft/loot_tables/subtables/*/*.json
	#bucepack-data/*/subtables/*.json

# needed by all texture pack targets
DEFAULT_FILES = LICENSE.txt

lcg_FILES := \
	data/lcg/functions/load.mcfunction \
	data/lcg/functions/random.mcfunction \
	data/lcg/functions/get_seed.mcfunction

painting_overhaul_FILES := $(DEFAULT_FILES) \
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
	assets/minecraft/textures/painting/pointer.png

note_guide_FILES := $(DEFAULT_FILES) \
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
	assets/minecraft/blockstates/note_block.json

note_guide_adv_FILES := $(DEFAULT_FILES) \
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
	assets/minecraft/blockstates/adv_note_block.json

brew_guide_FILES := $(DEFAULT_FILES) \
	assets/minecraft/textures/gui/container/brewing_stand.png

tech_arrows_FILES := $(DEFAULT_FILES) \
	assets/minecraft/models/block/hopper_side.json \
	assets/minecraft/models/block/observer.json \
	assets/minecraft/models/block/observer_on.json \
	assets/minecraft/textures/block/hopper_inside.png \
	assets/minecraft/textures/block/hopper_inside_side.png \
	assets/minecraft/textures/block/observer_back_on.png \
	assets/minecraft/textures/block/observer_side.png \
	assets/minecraft/textures/block/observer_side_on.png \
	assets/minecraft/textures/block/observer_front_on.png

ravager_FILES := $(DEFAULT_FILES) \
	assets/minecraft/textures/entity/illager/ravager.png

villager_mech_FILES := $(DEFAULT_FILES) \
	assets/minecraft/textures/entity/iron_golem/iron_golem.png \
	assets/minecraft/textures/entity/iron_golem/iron_golem_crackiness_low.png \
	assets/minecraft/textures/entity/iron_golem/iron_golem_crackiness_medium.png \
	assets/minecraft/textures/entity/iron_golem/iron_golem_crackiness_high.png

candystrider_FILES := $(DEFAULT_FILES) \
	assets/minecraft/textures/entity/strider/strider_cold.png \
	assets/minecraft/textures/entity/strider/strider.png

pig_armor_FILES := $(DEFAULT_FILES) \
	assets/minecraft/textures/entity/pig/pig_saddle.png

ore_types_FILES := $(DEFAULT_FILES) \
	assets/minecraft/textures/block/coal_ore.png \
	assets/minecraft/textures/block/lapis_ore.png \
	assets/minecraft/textures/block/diamond_ore.png \
	assets/minecraft/textures/block/redstone_ore.png \
	assets/minecraft/textures/block/emerald_ore.png \
	assets/minecraft/textures/block/gold_ore.png \
	assets/minecraft/textures/block/iron_ore.png \
	assets/minecraft/textures/block/copper_ore.png
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

discreet_pumpkin_FILES := $(DEFAULT_FILES) \
	assets/minecraft/textures/misc/pumpkinblur.png

stickier_piston_FILES := $(DEFAULT_FILES) \
	assets/minecraft/models/block/sticky_piston.json \
	assets/minecraft/models/block/sticky_piston_inventory.json \
	assets/minecraft/textures/block/piston_side_sticky.png \
	assets/minecraft/textures/block/piston_top_sticky.png

classic_netherrack_FILES := $(DEFAULT_FILES) \
	assets/minecraft/textures/block/netherrack.png \
	assets/minecraft/textures/block/nether_quartz_ore.png \
	assets/minecraft/textures/block/nether_gold_ore.png \
	assets/minecraft/textures/block/crimson_nylium_side.png \
	assets/minecraft/textures/block/warped_nylium_side.png

classic_lava_FILES := $(DEFAULT_FILES) \
	assets/minecraft/textures/block/lava_still.png.mcmeta \
	assets/minecraft/textures/block/lava_flow.png.mcmeta \
	assets/minecraft/textures/block/lava_still.png \
	assets/minecraft/textures/block/lava_flow.png

classic_gravel_FILES := $(DEFAULT_FILES) \
	assets/minecraft/textures/block/gravel.png

classic_lapis_FILES := $(DEFAULT_FILES) \
	assets/minecraft/textures/block/lapis_block.png

classic_rose_FILES := $(DEFAULT_FILES) \
	assets/minecraft/textures/block/poppy.png \
	assets/minecraft/lang/en_us.json

classic_food_FILES := $(DEFAULT_FILES) \
	assets/minecraft/textures/item/apple.png \
	assets/minecraft/textures/item/baked_potato.png \
	assets/minecraft/textures/item/beef.png \
	assets/minecraft/textures/item/bread.png \
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
	assets/minecraft/textures/item/salmon.png

retronetherrack_FILES := $(DEFAULT_FILES) \
	assets/minecraft/textures/block/netherrack.png \
	assets/minecraft/textures/block/nether_quartz_ore.png

retroiron_FILES := $(DEFAULT_FILES) \
	assets/minecraft/textures/block/iron_block.png

classic_moo_FILES := $(DEFAULT_FILES) \
	assets/minecraft/sounds/mob/cow/hurt1.ogg \
	assets/minecraft/sounds/mob/cow/hurt2.ogg \
	assets/minecraft/sounds/mob/cow/hurt3.ogg \
	assets/minecraft/sounds/mob/cow/say1.ogg \
	assets/minecraft/sounds/mob/cow/say2.ogg \
	assets/minecraft/sounds/mob/cow/say3.ogg \
	assets/minecraft/sounds/mob/cow/say4.ogg

classic_twang_FILES := $(DEFAULT_FILES) \
	assets/minecraft/sounds/random/bowhit4.ogg \
	assets/minecraft/sounds/random/bowhit2.ogg \
	assets/minecraft/sounds/random/bowhit1.ogg \
	assets/minecraft/sounds/random/bowhit3.ogg

classic_sploosh_FILES := $(DEFAULT_FILES) \
	assets/minecraft/sounds/liquid/splash.ogg \
	assets/minecraft/sounds/liquid/splash2.ogg \
	assets/minecraft/sounds/liquid/swim1.ogg \
	assets/minecraft/sounds/liquid/swim2.ogg \
	assets/minecraft/sounds/liquid/swim3.ogg \
	assets/minecraft/sounds/liquid/swim4.ogg

classic_crunch_FILES := $(DEFAULT_FILES) \
	assets/minecraft/sounds/step/grass4.ogg \
	assets/minecraft/sounds/step/grass5.ogg \
	assets/minecraft/sounds/step/grass1.ogg \
	assets/minecraft/sounds/step/grass2.ogg \
	assets/minecraft/sounds/step/grass6.ogg \
	assets/minecraft/sounds/step/grass3.ogg

gardener_endermen_FILES := $(DEFAULT_FILES) \
	data/minecraft/tags/blocks/enderman_holdable.json \
	data/bucepack/advancements/gardener_endermen.json

climbable_FILES := $(DEFAULT_FILES) \
	data/minecraft/tags/blocks/climbable.json \
	data/bucepack/advancements/root.json \
	data/bucepack/advancements/climbable.json

speedy_paths_FILES := $(DEFAULT_FILES) \
	data/minecraft/tags/blocks/soul_speed_blocks.json \
	data/bucepack/advancements/speedy_paths.json

waterproof_tech_FILES := $(DEFAULT_FILES) \
	data/minecraft/tags/blocks/signs.json \
	data/bucepack/advancements/root.json \
	data/bucepack/advancements/waterproof_tech.json

no_treasure_maps_FILES := $(DEFAULT_FILES) \
	data/minecraft/loot_tables/chests/shipwreck_map_nomap.json \
	data/bucepack/advancements/root.json \
	data/bucepack/advancements/no_treasure_maps.json

blue_fire_FILES := $(DEFAULT_FILES) \
	data/minecraft/tags/blocks/soul_fire_base_blocks.json \
	data/bucepack/advancements/root.json \
	data/bucepack/advancements/blue_fire.json

fortunate_jungle_FILES := $(DEFAULT_FILES) \
	data/minecraft/loot_tables/blocks/jungle_leaves.json \
	data/bucepack/advancements/fortunate_jungle.json

lose_hp_xp_FILES := $(DEFAULT_FILES) \
	data/bucepack/advancements/lose_hp_xp/die.json \
	data/bucepack/advancements/lose_hp_xp/keepinv.json \
	data/bucepack/advancements/lose_hp_xp/natregen.json \
	data/bucepack/advancements/lose_hp_xp/root.json \
	data/bucepack/advancements/root.json \
	data/bucepack/functions/lose_hp_xp/die.mcfunction \
	data/bucepack/functions/lose_hp_xp/keepinv.mcfunction \
	data/bucepack/functions/lose_hp_xp/load.mcfunction \
	data/bucepack/functions/lose_hp_xp/natregen.mcfunction \
	data/bucepack/functions/var.mcfunction \
	data/minecraft/tags/functions/load-lose_hp_xp.json \

loot_overhaul_FILES := $(DEFAULT_FILES) \
	data/bucepack/advancements/root.json \
	data/bucepack/advancements/loot_overhaul/loot_overhaul.json \
	data/minecraft/tags/items/starter_item.json \
	data/minecraft/tags/items/creeper_drop_music_discs.json \
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
	data/minecraft/loot_tables/gameplay/piglin_bartering.json \
	data/minecraft/loot_tables/gameplay/fishing/fish.json \
	data/minecraft/loot_tables/gameplay/fishing/junk.json \
	data/minecraft/loot_tables/gameplay/fishing/treasure.json \
	data/bucepack/loot_tables/loot_overhaul/subtables/biome_log.json \
	data/bucepack/loot_tables/loot_overhaul/subtables/ench_book.json \
	data/bucepack/loot_tables/loot_overhaul/subtables/lib_book.json \
	data/bucepack/loot_tables/loot_overhaul/subtables/treasure_seed.json \
	data/bucepack/loot_tables/example.json \
	data/minecraft/recipes/diamond_horse_armor.json \
	data/minecraft/recipes/gold_horse_armor.json \
	data/minecraft/recipes/iron_horse_armor.json \
	data/minecraft/recipes/nametag.json \
	data/minecraft/recipes/piglin_banner_pattern.json \
	data/minecraft/recipes/saddle.json \

relic_FILES := $(DEFAULT_FILES) \
	data/bucepack/advancements/relic/root.json \
	data/bucepack/functions/relic/bounding/activate.mcfunction \
	data/bucepack/functions/relic/breaking/axe/activate.mcfunction \
	data/bucepack/functions/relic/breaking/axe/break.mcfunction \
	data/bucepack/functions/relic/breaking/axe/chop.mcfunction \
	data/bucepack/functions/relic/breaking/axe/mine.mcfunction \
	data/bucepack/functions/relic/breaking/hoe/activate.mcfunction \
	data/bucepack/functions/relic/breaking/hoe/break.mcfunction \
	data/bucepack/functions/relic/breaking/hoe/break_xy.mcfunction \
	data/bucepack/functions/relic/breaking/hoe/break_xz.mcfunction \
	data/bucepack/functions/relic/breaking/hoe/break_yz.mcfunction \
	data/bucepack/functions/relic/breaking/hoe/mine.mcfunction \
	data/bucepack/functions/relic/breaking/off.mcfunction \
	data/bucepack/functions/relic/breaking/on.mcfunction \
	data/bucepack/functions/relic/breaking/pick/activate.mcfunction \
	data/bucepack/functions/relic/breaking/pick/break_3x3.mcfunction \
	data/bucepack/functions/relic/breaking/pick/break.mcfunction \
	data/bucepack/functions/relic/breaking/pick/mine.mcfunction \
	data/bucepack/functions/relic/breaking/shovel/activate.mcfunction \
	data/bucepack/functions/relic/breaking/shovel/break.mcfunction \
	data/bucepack/functions/relic/breaking/shovel/mine.mcfunction \
	data/bucepack/functions/relic/breaking/toggle.mcfunction \
	data/bucepack/functions/relic/chromatic/activate.mcfunction \
	data/bucepack/functions/relic/chromatic/party.mcfunction \
	data/bucepack/functions/relic/cloaking/activate.mcfunction \
	data/bucepack/functions/relic/cloaking/deactivate.mcfunction \
	data/bucepack/functions/relic/darkvision/activate.mcfunction \
	data/bucepack/functions/relic/gravitation/charge.mcfunction \
	data/bucepack/functions/relic/gravitation/pull.mcfunction \
	data/bucepack/functions/relic/gravitation/supercharge.mcfunction \
	data/bucepack/functions/relic/load.mcfunction \
	data/bucepack/functions/var.mcfunction \
	data/bucepack/functions/relic/mining/activate.mcfunction \
	data/bucepack/functions/relic/mining/charge.mcfunction \
	data/bucepack/functions/relic/relic.mcfunction \
	data/bucepack/functions/relic/searching/activate.mcfunction \
	data/bucepack/functions/relic/searching/bastion_remnant/charge.mcfunction \
	data/bucepack/functions/relic/searching/buried_treasure/charge.mcfunction \
	data/bucepack/functions/relic/searching/charge.mcfunction \
	data/bucepack/functions/relic/searching/desert_pyramid/charge.mcfunction \
	data/bucepack/functions/relic/searching/ding.mcfunction \
	data/bucepack/functions/relic/searching/endcity/charge.mcfunction \
	data/bucepack/functions/relic/searching/fortress/charge.mcfunction \
	data/bucepack/functions/relic/searching/igloo/charge.mcfunction \
	data/bucepack/functions/relic/searching/jungle_pyramid/charge.mcfunction \
	data/bucepack/functions/relic/searching/mansion/charge.mcfunction \
	data/bucepack/functions/relic/searching/mineshaft/charge.mcfunction \
	data/bucepack/functions/relic/searching/monument/charge.mcfunction \
	data/bucepack/functions/relic/searching/nether_fossil/charge.mcfunction \
	data/bucepack/functions/relic/searching/ocean_ruin/charge.mcfunction \
	data/bucepack/functions/relic/searching/pillager_outpost/charge.mcfunction \
	data/bucepack/functions/relic/searching/ruined_portal/charge.mcfunction \
	data/bucepack/functions/relic/searching/shipwreck/charge.mcfunction \
	data/bucepack/functions/relic/searching/stronghold/charge.mcfunction \
	data/bucepack/functions/relic/searching/swamp_hut/charge.mcfunction \
	data/bucepack/functions/relic/searching/village/charge.mcfunction \
	data/bucepack/functions/relic/splendor/activate.mcfunction \
	data/bucepack/functions/relic/splendor/glowing/activate.mcfunction \
	data/bucepack/functions/relic/splendor/glowing/permanent.mcfunction \
	data/bucepack/functions/relic/splendor/glowing/temporary.mcfunction \
	data/bucepack/functions/relic/splendor/glowing/toggle.mcfunction \
	data/bucepack/functions/relic/splendor/raycast.mcfunction \
	data/bucepack/functions/relic/splendor/upgrade.mcfunction \
	data/bucepack/loot_tables/relic/subtables/relic.json \
	data/bucepack/recipes/relic/smithing/barbed.json \
	data/bucepack/recipes/relic/smithing/bounding.json \
	data/bucepack/recipes/relic/smithing/endless.json \
	data/bucepack/recipes/relic/smithing/knockback/diamond_hoe.json \
	data/bucepack/recipes/relic/smithing/knockback/diamond_shovel.json \
	data/bucepack/recipes/relic/smithing/knockback/golden_hoe.json \
	data/bucepack/recipes/relic/smithing/knockback/golden_shovel.json \
	data/bucepack/recipes/relic/smithing/knockback/iron_hoe.json \
	data/bucepack/recipes/relic/smithing/knockback/iron_shovel.json \
	data/bucepack/recipes/relic/smithing/knockback/netherite_hoe.json \
	data/bucepack/recipes/relic/smithing/knockback/netherite_shovel.json \
	data/bucepack/recipes/relic/smithing/knockback/stone_hoe.json \
	data/bucepack/recipes/relic/smithing/knockback/stone_shovel.json \
	data/bucepack/recipes/relic/smithing/knockback/wooden_hoe.json \
	data/bucepack/recipes/relic/smithing/knockback/wooden_shovel.json \
	data/bucepack/recipes/relic/smithing/protection.json \
	data/bucepack/recipes/relic/smithing/sharpness/diamond_pickaxe.json \
	data/bucepack/recipes/relic/smithing/sharpness/golden_pickaxe.json \
	data/bucepack/recipes/relic/smithing/sharpness/iron_pickaxe.json \
	data/bucepack/recipes/relic/smithing/sharpness/netherite_pickaxe.json \
	data/bucepack/recipes/relic/smithing/sharpness/stone_pickaxe.json \
	data/bucepack/recipes/relic/smithing/sharpness/trident.json \
	data/bucepack/recipes/relic/smithing/sharpness/wooden_pickaxe.json \
	data/bucepack/recipes/relic/smithing/smiting/diamond_axe.json \
	data/bucepack/recipes/relic/smithing/smiting/diamond_sword.json \
	data/bucepack/recipes/relic/smithing/smiting/golden_axe.json \
	data/bucepack/recipes/relic/smithing/smiting/golden_sword.json \
	data/bucepack/recipes/relic/smithing/smiting/iron_axe.json \
	data/bucepack/recipes/relic/smithing/smiting/iron_sword.json \
	data/bucepack/recipes/relic/smithing/smiting/netherite_axe.json \
	data/bucepack/recipes/relic/smithing/smiting/netherite_sword.json \
	data/bucepack/recipes/relic/smithing/smiting/stone_axe.json \
	data/bucepack/recipes/relic/smithing/smiting/stone_sword.json \
	data/bucepack/recipes/relic/smithing/smiting/wooden_axe.json \
	data/bucepack/recipes/relic/smithing/smiting/wooden_sword.json \
	data/bucepack/recipes/relic/smithing/striding/diamond_horse_armor.json \
	data/bucepack/recipes/relic/smithing/striding/golden_horse_armor.json \
	data/bucepack/recipes/relic/smithing/striding/iron_horse_armor.json \
	data/bucepack/recipes/relic/smithing/striding/leather_horse_armor.json \
	data/bucepack/recipes/relic/smithing/vitality.json \
	data/bucepack/recipes/relic/smithing/frost_flood.json \
	data/bucepack/recipes/relic/smithing/projectile_protection.json \
	#data/bucepack/loot_tables/relic/subtables/darkvision_helmet.json \
	#data/bucepack/loot_tables/relic/subtables/fireworks.json \
	#data/minecraft/loot_tables/entities/blaze.json \
	#data/minecraft/loot_tables/entities/cave_spider.json \
	#data/minecraft/loot_tables/entities/creeper.json \
	#data/minecraft/loot_tables/entities/drowned.json \
	#data/minecraft/loot_tables/entities/ender_dragon.json \
	#data/minecraft/loot_tables/entities/enderman.json \
	#data/minecraft/loot_tables/entities/guardian.json \
	#data/minecraft/loot_tables/entities/husk.json \
	#data/minecraft/loot_tables/entities/magma_cube.json \
	#data/minecraft/loot_tables/entities/skeleton.json \
	#data/minecraft/loot_tables/entities/slime.json \
	#data/minecraft/loot_tables/entities/spider.json \
	#data/minecraft/loot_tables/entities/stray.json \
	#data/minecraft/loot_tables/entities/vex.json \
	#data/minecraft/loot_tables/entities/zombie.json \
	#data/minecraft/recipes/light.json \
	#data/bucepack/recipes/relic/smithing/chromatic.json \
	#data/bucepack/recipes/relic/smithing/cloaking/elytra.json \
	#data/bucepack/recipes/relic/smithing/cloaking/leather_chestplate.json \
	#data/bucepack/recipes/relic/smithing/gravitation.json \
	#data/bucepack/recipes/relic/smithing/hovering.json \
	#data/bucepack/recipes/relic/smithing/mining.json \
	#data/bucepack/recipes/relic/smithing/searching.json \
	#data/bucepack/recipes/relic/smithing/splendor.json \
	#data/minecraft/tags/functions/load-relic.json \
	#data/bucepack/advancements/relic/bounding/trigger.json \
	#data/bucepack/advancements/relic/breaking/axe/trigger.json \
	#data/bucepack/advancements/relic/breaking/axe/trigger_sneaking.json \
	#data/bucepack/advancements/relic/breaking/hoe/trigger.json \
	#data/bucepack/advancements/relic/breaking/hoe/trigger_sneaking.json \
	#data/bucepack/advancements/relic/breaking/pick/trigger.json \
	#data/bucepack/advancements/relic/breaking/pick/trigger_sneaking.json \
	#data/bucepack/advancements/relic/breaking/shovel/trigger.json \
	#data/bucepack/advancements/relic/breaking/shovel/trigger_sneaking.json \
	#data/bucepack/advancements/relic/chromatic/trigger.json \
	#data/bucepack/advancements/relic/cloaking/trigger_attack.json \
	#data/bucepack/advancements/relic/cloaking/trigger.json \
	#data/bucepack/advancements/relic/darkvision/trigger.json \
	#data/bucepack/advancements/relic/gravitation/trigger.json \
	#data/bucepack/advancements/relic/gravitation/trigger_sneaking.json \
	#data/bucepack/advancements/relic/mining/trigger.json \
	#data/bucepack/advancements/relic/searching/bastion_remnant/trigger.json \
	#data/bucepack/advancements/relic/searching/buried_treasure/trigger.json \
	#data/bucepack/advancements/relic/searching/desert_pyramid/trigger.json \
	#data/bucepack/advancements/relic/searching/endcity/trigger.json \
	#data/bucepack/advancements/relic/searching/fortress/trigger.json \
	#data/bucepack/advancements/relic/searching/igloo/trigger.json \
	#data/bucepack/advancements/relic/searching/jungle_pyramid/trigger.json \
	#data/bucepack/advancements/relic/searching/mansion/trigger.json \
	#data/bucepack/advancements/relic/searching/mineshaft/trigger.json \
	#data/bucepack/advancements/relic/searching/monument/trigger.json \
	#data/bucepack/advancements/relic/searching/nether_fossil/trigger.json \
	#data/bucepack/advancements/relic/searching/ocean_ruin/trigger.json \
	#data/bucepack/advancements/relic/searching/pillager_outpost/trigger.json \
	#data/bucepack/advancements/relic/searching/ruined_portal/trigger.json \
	#data/bucepack/advancements/relic/searching/ruined_portal/trigger_nether.json \
	#data/bucepack/advancements/relic/searching/shipwreck/trigger.json \
	#data/bucepack/advancements/relic/searching/stronghold/trigger.json \
	#data/bucepack/advancements/relic/searching/swamp_hut/trigger.json \
	#data/bucepack/advancements/relic/searching/the_end/trigger.json \
	#data/bucepack/advancements/relic/searching/the_nether/trigger.json \
	#data/bucepack/advancements/relic/searching/the_overworld/trigger.json \
	#data/bucepack/advancements/relic/searching/village/trigger.json \
	#data/bucepack/advancements/relic/splendor/glowing/trigger.json \
	#data/bucepack/advancements/relic/splendor/glowing/trigger_toggle.json \
	#data/bucepack/advancements/relic/splendor/trigger.json \

starter_relic_FILES := $(DEFAULT_FILES) \
	$(relic_FILES) \
	data/bucepack/advancements/relic/starter_relic.json \
	data/bucepack/advancements/root.json \
	data/bucepack/functions/relic/starter_relic.mcfunction \

relic_loot_FILES := $(DEFAULT_FILES) \
	$(relic_FILES) \
	data/bucepack/advancements/relic/relic_loot.json \
	data/bucepack/advancements/root.json \

starter_bonus_chest_FILES := $(DEFAULT_FILES) \
	data/bucepack/advancements/starter_bonus_chest.json \
	data/bucepack/advancements/root.json \
	data/bucepack/functions/starter_bonus_chest.mcfunction \

dragonproof_FILES := $(DEFAULT_FILES) \
	data/bucepack/advancements/dragonproof.json \
	data/minecraft/tags/blocks/dragon_immune.json \

mineable_FILES := $(DEFAULT_FILES) \
	data/minecraft/tags/blocks/mineable/axe.json \
	data/minecraft/tags/blocks/mineable/pickaxe.json \
	data/bucepack/advancements/mineable.json \

shearless_FILES := $(DEFAULT_FILES) \
	data/minecraft/tags/blocks/mineable/hoe.json \
	data/minecraft/loot_tables/blocks/cobweb.json \
	data/minecraft/loot_tables/blocks/dead_bush.json \
	data/minecraft/loot_tables/blocks/fern.json \
	data/minecraft/loot_tables/blocks/glow_lichen.json \
	data/minecraft/loot_tables/blocks/grass.json \
	data/minecraft/loot_tables/blocks/hanging_roots.json \
	data/minecraft/loot_tables/blocks/large_fern.json \
	data/minecraft/loot_tables/blocks/nether_sprouts.json \
	data/minecraft/loot_tables/blocks/seagrass.json \
	data/minecraft/loot_tables/blocks/small_dripleaf.json \
	data/minecraft/loot_tables/blocks/tall_grass.json \
	data/minecraft/loot_tables/blocks/tall_seagrass.json \
	data/minecraft/loot_tables/blocks/twisting_vines.json \
	data/minecraft/loot_tables/blocks/twisting_vines_plant.json \
	data/minecraft/loot_tables/blocks/vine.json \
	data/minecraft/loot_tables/blocks/weeping_vines.json \
	data/minecraft/loot_tables/blocks/weeping_vines_plant.json \
	data/bucepack/advancements/shearless.json \

mixed_crafting_FILES := $(DEFAULT_FILES) \
	data/minecraft/recipes/bed.json \
	data/minecraft/recipes/dispenser.json \
	data/minecraft/recipes/dropper.json \
	data/minecraft/recipes/lever.json \
	data/minecraft/recipes/observer.json \
	data/minecraft/recipes/piston.json \
	data/minecraft/recipes/wooden_boat.json \
	data/minecraft/recipes/wooden_button.json \
	data/minecraft/recipes/wooden_door.json \
	data/minecraft/recipes/wooden_fence.json \
	data/minecraft/recipes/wooden_fence_gate.json \
	data/minecraft/recipes/wooden_pressure_plate.json \
	data/minecraft/recipes/wooden_sign.json \
	data/minecraft/recipes/wooden_trapdoor.json \
	data/minecraft/tags/items/stone_crafting_materials.json \
	data/minecraft/tags/items/stone_tool_materials.json \
	data/bucepack/advancements/mixed_crafting.json

breeding_overhaul_FILES := $(DEFAULT_FILES) \
	data/minecraft/tags/functions/load-breeding_overhaul.json \
	data/bucepack/advancements/root.json \
	data/bucepack/advancements/breeding_overhaul/root.json \
	data/bucepack/advancements/breeding_overhaul/trigger.json \
	data/bucepack/predicates/breeding_overhaul/equine.json \
	data/bucepack/functions/breeding_overhaul/activate.mcfunction \
	data/bucepack/functions/breeding_overhaul/breed.mcfunction \
	data/bucepack/functions/breeding_overhaul/baby.mcfunction \
	data/bucepack/functions/breeding_overhaul/debug.mcfunction \
	data/bucepack/functions/var.mcfunction

more_rain_FILES := $(DEFAULT_FILES) \
	data/bucepack/advancements/root.json \
	data/bucepack/functions/more_rain/rain.mcfunction \
	data/bucepack/functions/more_rain/sleep.mcfunction \
	data/bucepack/predicates/more_rain/rain_chance.json \
	data/bucepack/advancements/more_rain/sleep.json \
	data/minecraft/tags/functions/load-more_rain.json \
	data/bucepack/functions/var.mcfunction \
	data/bucepack/advancements/more_rain/root.json \

glow_squid_glamers_FILES := $(DEFAULT_FILES) \
	$(shell find bucepack-data/illusory/glow_squid -type f | ./bin/ext2dir) \
	data/bucepack/advancements/root.json \
	data/bucepack/advancements/illusory/glow_squid/root.json \
	data/minecraft/loot_tables/entities/glow_squid.json \

squid_glamer_FILES := $(DEFAULT_FILES) \
	$(shell find bucepack-data/illusory/squid -type f | ./bin/ext2dir) \
	data/bucepack/advancements/root.json \
	data/bucepack/advancements/illusory/squid/root.json \
	data/minecraft/loot_tables/entities/squid.json \

phantasmal_FILES := $(DEFAULT_FILES) \
	$(shell find bucepack-data/phantasmal -type f | ./bin/ext2dir) \
	data/bucepack/advancements/root.json \
	data/minecraft/loot_tables/entities/phantom.json \
	data/minecraft/tags/functions/load-phantasmal.json \
	data/bucepack/functions/var.mcfunction \
#	data/bucepack/recipes/phantasmal/armor_stand.json \
#	data/bucepack/recipes/phantasmal/item_frame.json \
#	data/bucepack/advancements/phantasmal/cloak.json \
#	data/bucepack/functions/phantasmal/cloak.mcfunction \
#	data/bucepack/advancements/phantasmal/root.json \
#	data/bucepack/advancements/phantasmal/uncloak.json \
#	data/bucepack/functions/phantasmal/load.mcfunction \
#	data/bucepack/advancements/phantasmal/disappear.json \
#	data/bucepack/functions/phantasmal/uncloak.mcfunction \
#	data/bucepack/functions/phantasmal/disappear.mcfunction \
#	data/bucepack/functions/phantasmal/trigger.mcfunction \

mother_phantoms_FILES := $(DEFAULT_FILES) \
	data/bucepack/advancements/root.json \
	data/bucepack/advancements/mother_phantoms/mama_phantom.json \
	data/bucepack/advancements/mother_phantoms/phantom.json \
	data/bucepack/advancements/mother_phantoms/root.json \
	data/bucepack/functions/mother_phantoms/mama_phantom.mcfunction \
	data/bucepack/functions/mother_phantoms/phantom.mcfunction \
	data/bucepack/predicates/mother_phantoms/baby_phantom_chance.json \
	data/minecraft/loot_tables/entities/phantom_mother.json \
	data/minecraft/loot_tables/entities/phantom_carrot.json \
	data/minecraft/tags/functions/load-mother_phantoms.json \
	data/bucepack/functions/var.mcfunction \

smooth_cracked_stonecutting_FILES := $(DEFAULT_FILES) \
	data/bucepack/advancements/smooth_cracked_stonecutting/root.json \
	data/bucepack/recipes/smooth_cracked_stonecutting/cracked_deepslate_bricks.json \
	data/bucepack/recipes/smooth_cracked_stonecutting/cracked_deepslate_tiles.json \
	data/bucepack/recipes/smooth_cracked_stonecutting/cracked_nether_bricks.json \
	data/bucepack/recipes/smooth_cracked_stonecutting/cracked_polished_blackstone_bricks.json \
	data/bucepack/recipes/smooth_cracked_stonecutting/cracked_stone_bricks.json \
	data/bucepack/recipes/smooth_cracked_stonecutting/smooth_basalt.json \
	data/bucepack/recipes/smooth_cracked_stonecutting/smooth_quartz.json \
	data/bucepack/recipes/smooth_cracked_stonecutting/smooth_red_sandstone.json \
	data/bucepack/recipes/smooth_cracked_stonecutting/smooth_sandstone.json \
	data/bucepack/recipes/smooth_cracked_stonecutting/smooth_stone.json \

more_shulker_shells_FILES := $(DEFAULT_FILES) \
	data/minecraft/loot_tables/entities/shulker.json \
	data/bucepack/advancements/more_shulker_shells.json

escape_end_FILES := $(DEFAULT_FILES) \
	data/minecraft/tags/functions/tick-escape.json \
	data/escape/functions/end_respawn.mcfunction \
	data/escape/functions/tick-end.mcfunction \
	data/bucepack/advancements/escape_end.json

escape_nether_FILES := $(DEFAULT_FILES) \
	data/minecraft/tags/functions/tick-escape.json \
	data/escape/functions/nether_respawn.mcfunction \
	data/escape/functions/tick-nether.mcfunction \
	data/escape/tags/blocks/airlava.json \
	data/bucepack/advancements/escape_nether.json \
	data/escape/advancements/kill_wither.json

escape_grind_FILES := $(DEFAULT_FILES) \
	data/minecraft/tags/functions/load-grind.json \
	data/minecraft/tags/functions/tick-grind.json \
	data/minecraft/loot_tables/blocks/crying_obsidian_lapis.json \
	data/minecraft/loot_tables/chests/end_city_treasure.json \
	data/escape/recipes/grindstone.json \
	data/escape/tags/functions/respawn.json \
	data/escape/functions/load.mcfunction \
	data/escape/functions/tick_grind.mcfunction \
	data/escape/functions/grind_respawn.mcfunction \
	data/escape/functions/locate_city.mcfunction \
	data/bucepack/advancements/escape_grind.json

lichdom_FILES := $(DEFAULT_FILES) \
	data/minecraft/tags/functions/load-lichdom.json \
	data/minecraft/tags/functions/tick-lichdom.json \
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
	data/bucepack/advancements/root.json \
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
	data/lichdom/advancements/drink_blood_4.json

starter_bed_FILES := $(DEFAULT_FILES) \
	data/minecraft/tags/items/starter_bed.json \
	data/bucepack/advancements/starter_bed.json

starter_book_FILES := $(DEFAULT_FILES) \
	data/minecraft/tags/items/starter_book.json \
	data/bucepack/advancements/starter_book.json

starter_bucket_FILES := $(DEFAULT_FILES) \
	data/minecraft/tags/items/starter_bucket.json \
	data/bucepack/advancements/starter_bucket.json

starter_map_FILES := $(DEFAULT_FILES) \
	data/minecraft/tags/items/starter_map.json \
	data/bucepack/advancements/starter_map.json

starter_shulker_FILES := $(DEFAULT_FILES) \
	data/minecraft/tags/items/starter_shulker.json \
	data/bucepack/advancements/starter_shulker.json

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

data/bucepack/loot_tables/%.json: bucepack-data/%.loot_table.json
	mkdir -p $(dir $@)
	cp -v $< $@

data/minecraft/functions/%.mcfunction: minecraft-data/%.function.mcfunction
	mkdir -p $(dir $@)
	cp -v $< $@

data/bucepack/functions/%.mcfunction: bucepack-data/%.function.mcfunction
	mkdir -p $(dir $@)
	cp -v $< $@

data/minecraft/advancements/%.json: minecraft-data/%.advancement.json
	mkdir -p $(dir $@)
	cp -v $< $@

data/bucepack/advancements/%.json: bucepack-data/%.advancement.json
	mkdir -p $(dir $@)
	cp -v $< $@

data/minecraft/predicates/%.json: minecraft-data/%.predicate.json
	mkdir -p $(dir $@)
	cp -v $< $@

data/bucepack/predicates/%.json: bucepack-data/%.predicate.json
	mkdir -p $(dir $@)
	cp -v $< $@

data/minecraft/recipes/%.json: minecraft-data/%.recipe.json
	mkdir -p $(dir $@)
	cp -v $< $@

data/bucepack/recipes/%.json: bucepack-data/%.recipe.json
	mkdir -p $(dir $@)
	cp -v $< $@

data/minecraft/tags/blocks/%.json: minecraft-data/%.block.tag.json
	mkdir -p $(dir $@)
	cp -v $< $@

data/bucepack/tags/blocks/%.json: bucepack-data/%.block.tag.json
	mkdir -p $(dir $@)
	cp -v $< $@

data/minecraft/tags/items/%.json: minecraft-data/%.item.tag.json
	mkdir -p $(dir $@)
	cp -v $< $@

data/bucepack/tags/items/%.json: bucepack-data/%.item.tag.json
	mkdir -p $(dir $@)
	cp -v $< $@

data/minecraft/tags/functions/%.json: minecraft-data/%.function.tag.json
	mkdir -p $(dir $@)
	cp -v $< $@

data/bucepack/tags/functions/%.json: bucepack-data/%.function.tag.json
	mkdir -p $(dir $@)
	cp -v $< $@

#data/minecraft/loot_tables/%.json: data/minecraft/loot_tables/%.json.yaml data/minecraft/loot_tables/loot_table.j2
#	j2 data/minecraft/loot_tables/loot_table.j2 $< -o $@
#
#data/bucepack/loot_tables/%.json: data/bucepack/loot_tables/%.json.yaml data/minecraft/loot_tables/loot_table.j2
#	j2 data/minecraft/loot_tables/loot_table.j2 $< -o $@

%.json: %.json.yaml data/minecraft/loot_tables/loot_table.j2
	j2 data/minecraft/loot_tables/loot_table.j2 $< -o $@

test.zip: $(test_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

painting_overhaul.zip: $(painting_overhaul_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

note_guide.zip: $(note_guide_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

note_guide_adv.zip: $(note_guide_adv_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	printf "@ assets/minecraft/blockstates/adv_note_block.json\n@=assets/minecraft/blockstates/note_block.json\n" | zipnote -w $@
	printf "@ assets/minecraft/textures/block/adv_note_block_0.png\n@=assets/minecraft/textures/block/note_block_0.png\n" | zipnote -w $@
	printf "@ assets/minecraft/textures/block/adv_note_block_1.png\n@=assets/minecraft/textures/block/note_block_1.png\n" | zipnote -w $@
	printf "@ assets/minecraft/textures/block/adv_note_block_2.png\n@=assets/minecraft/textures/block/note_block_2.png\n" | zipnote -w $@
	printf "@ assets/minecraft/textures/block/adv_note_block_3.png\n@=assets/minecraft/textures/block/note_block_3.png\n" | zipnote -w $@
	printf "@ assets/minecraft/textures/block/adv_note_block_4.png\n@=assets/minecraft/textures/block/note_block_4.png\n" | zipnote -w $@
	printf "@ assets/minecraft/textures/block/adv_note_block_5.png\n@=assets/minecraft/textures/block/note_block_5.png\n" | zipnote -w $@
	printf "@ assets/minecraft/textures/block/adv_note_block_6.png\n@=assets/minecraft/textures/block/note_block_6.png\n" | zipnote -w $@
	printf "@ assets/minecraft/textures/block/adv_note_block_7.png\n@=assets/minecraft/textures/block/note_block_7.png\n" | zipnote -w $@
	printf "@ assets/minecraft/textures/block/adv_note_block_8.png\n@=assets/minecraft/textures/block/note_block_8.png\n" | zipnote -w $@
	printf "@ assets/minecraft/textures/block/adv_note_block_9.png\n@=assets/minecraft/textures/block/note_block_9.png\n" | zipnote -w $@
	printf "@ assets/minecraft/textures/block/adv_note_block_10.png\n@=assets/minecraft/textures/block/note_block_10.png\n" | zipnote -w $@
	printf "@ assets/minecraft/textures/block/adv_note_block_11.png\n@=assets/minecraft/textures/block/note_block_11.png\n" | zipnote -w $@
	printf "@ assets/minecraft/textures/block/adv_note_block_12.png\n@=assets/minecraft/textures/block/note_block_12.png\n" | zipnote -w $@
	printf "@ assets/minecraft/textures/block/adv_note_block_13.png\n@=assets/minecraft/textures/block/note_block_13.png\n" | zipnote -w $@
	printf "@ assets/minecraft/textures/block/adv_note_block_14.png\n@=assets/minecraft/textures/block/note_block_14.png\n" | zipnote -w $@
	printf "@ assets/minecraft/textures/block/adv_note_block_15.png\n@=assets/minecraft/textures/block/note_block_15.png\n" | zipnote -w $@
	printf "@ assets/minecraft/textures/block/adv_note_block_16.png\n@=assets/minecraft/textures/block/note_block_16.png\n" | zipnote -w $@
	printf "@ assets/minecraft/textures/block/adv_note_block_17.png\n@=assets/minecraft/textures/block/note_block_17.png\n" | zipnote -w $@
	printf "@ assets/minecraft/textures/block/adv_note_block_18.png\n@=assets/minecraft/textures/block/note_block_18.png\n" | zipnote -w $@
	printf "@ assets/minecraft/textures/block/adv_note_block_19.png\n@=assets/minecraft/textures/block/note_block_19.png\n" | zipnote -w $@
	printf "@ assets/minecraft/textures/block/adv_note_block_20.png\n@=assets/minecraft/textures/block/note_block_20.png\n" | zipnote -w $@
	printf "@ assets/minecraft/textures/block/adv_note_block_21.png\n@=assets/minecraft/textures/block/note_block_21.png\n" | zipnote -w $@
	printf "@ assets/minecraft/textures/block/adv_note_block_22.png\n@=assets/minecraft/textures/block/note_block_22.png\n" | zipnote -w $@
	printf "@ assets/minecraft/textures/block/adv_note_block_23.png\n@=assets/minecraft/textures/block/note_block_23.png\n" | zipnote -w $@
	printf "@ assets/minecraft/textures/block/adv_note_block_24.png\n@=assets/minecraft/textures/block/note_block_24.png\n" | zipnote -w $@

brew_guide.zip: $(brew_guide_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

tech_arrows.zip: $(tech_arrows_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

ravager.zip: $(ravager_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

villager_mech.zip: $(villager_mech_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

candystrider.zip: $(candystrider_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

pig_armor.zip: $(pig_armor_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

ore_types.zip: $(ore_types_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

discreet_pumpkin.zip: $(discreet_pumpkin_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

stickier_piston.zip: $(stickier_piston_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

classic_netherrack.zip: $(classic_netherrack_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

classic_lava.zip: $(classic_lava_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

classic_gravel.zip: $(classic_gravel_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

classic_lapis.zip: $(classic_lapis_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

classic_rose.zip: $(classic_rose_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

classic_food.zip: $(classic_food_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

retronetherrack.zip: $(retronetherrack_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

retroiron.zip: $(retroiron_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

classic_moo.zip: $(classic_moo_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

classic_twang.zip: $(classic_twang_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

classic_sploosh.zip: $(classic_sploosh_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

classic_crunch.zip: $(classic_crunch_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

gardener_endermen.zip: $(gardener_endermen_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

climbable.zip: $(climbable_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

speedy_paths.zip: $(speedy_paths_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

waterproof_tech.zip: $(waterproof_tech_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

no_treasure_maps.zip: $(no_treasure_maps_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	printf "@ data/minecraft/loot_tables/chests/shipwreck_map_nomap.json\n@=data/minecraft/loot_tables/chests/shipwreck_map.json\n" | zipnote -w $@

blue_fire.zip: $(blue_fire_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

fortunate_jungle.zip: $(fortunate_jungle_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

more_rain.zip: $(more_rain_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	printf "@ data/minecraft/tags/functions/load-more_rain.json\n@=data/minecraft/tags/functions/load.json\n" | zipnote -w $@

lose_hp_xp.zip: $(lose_hp_xp_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	printf "@ data/minecraft/tags/functions/load-lose_hp_xp.json\n@=data/minecraft/tags/functions/load.json\n" | zipnote -w $@

loot_overhaul.zip: $(loot_overhaul_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

starter_relic.zip: $(starter_relic_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	#printf "@ data/minecraft/tags/functions/load-relic.json\n@=data/minecraft/tags/functions/load.json\n" | zipnote -w $@

starter_bonus_chest.zip: $(starter_bonus_chest_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

relic_loot.zip: $(relic_loot_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	#printf "@ data/minecraft/tags/functions/load-relic.json\n@=data/minecraft/tags/functions/load.json\n" | zipnote -w $@

dragonproof.zip: $(dragonproof_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

mineable.zip: $(mineable_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

shearless.zip: $(shearless_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

mixed_crafting.zip: $(mixed_crafting_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

squid_glamer.zip: $(squid_glamer_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

glow_squid_glamers.zip: $(glow_squid_glamers_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

phantasmal.zip: $(phantasmal_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	printf "@ data/minecraft/tags/functions/load-phantasmal.json\n@=data/minecraft/tags/functions/load.json\n" | zipnote -w $@

mother_phantoms.zip: $(mother_phantoms_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	printf "@ data/minecraft/tags/functions/load-mother_phantoms.json\n@=data/minecraft/tags/functions/load.json\n" | zipnote -w $@

breeding_overhaul.zip: $(breeding_overhaul_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

smooth_cracked_stonecutting.zip: $(smooth_cracked_stonecutting_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

more_shulker_shells.zip: $(more_shulker_shells_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

escape_end.zip: $(escape_end_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	printf "@ data/minecraft/tags/functions/tick-escape.json\n@=data/minecraft/tags/functions/tick.json\n" | zipnote -w $@
	printf "@ data/escape/functions/tick-end.mcfunction\n@=data/escape/functions/tick.mcfunction\n" | zipnote -w $@

escape_nether.zip: $(escape_nether_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	printf "@ data/minecraft/tags/functions/tick-escape.json\n@=data/minecraft/tags/functions/tick.json\n" | zipnote -w $@
	printf "@ data/escape/functions/tick-nether.mcfunction\n@=data/escape/functions/tick.mcfunction\n" | zipnote -w $@

escape_grind.zip: $(escape_grind_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	printf "@ data/minecraft/tags/functions/load-grind.json\n@=data/minecraft/tags/functions/load.json\n" | zipnote -w $@
	printf "@ data/minecraft/tags/functions/tick-grind.json\n@=data/minecraft/tags/functions/tick.json\n" | zipnote -w $@
	printf "@ data/minecraft/loot_tables/blocks/crying_obsidian_lapis.json\n@=data/minecraft/loot_tables/blocks/crying_obsidian.json\n" | zipnote -w $@

lichdom.zip: $(lichdom_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	printf "@ data/minecraft/tags/functions/tick-lichdom.json\n@=data/minecraft/tags/functions/tick.json\n" | zipnote -w $@
	printf "@ data/minecraft/tags/functions/load-lichdom.json\n@=data/minecraft/tags/functions/load.json\n" | zipnote -w $@

starter_bed.zip: $(starter_bed_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	printf "@ data/minecraft/tags/items/starter_bed.json\n@=data/minecraft/tags/items/starter_item.json\n" | zipnote -w $@

starter_book.zip: $(starter_book_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	printf "@ data/minecraft/tags/items/starter_book.json\n@=data/minecraft/tags/items/starter_item.json\n" | zipnote -w $@

starter_bucket.zip: $(starter_bucket_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	printf "@ data/minecraft/tags/items/starter_bucket.json\n@=data/minecraft/tags/items/starter_item.json\n" | zipnote -w $@

starter_map.zip: $(starter_map_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	printf "@ data/minecraft/tags/items/starter_map.json\n@=data/minecraft/tags/items/starter_item.json\n" | zipnote -w $@

starter_shulker.zip: $(starter_shulker_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	printf "@ data/minecraft/tags/items/starter_shulker.json\n@=data/minecraft/tags/items/starter_item.json\n" | zipnote -w $@

.PHONY: install
install: $(RESOURCEPACKFILES) $(DATAPACKFILES)
	cp $(RESOURCEPACKFILES) $(MCDIR)/resourcepacks
	mkdir -p $(MCDIR)/datapacks
	cp $(DATAPACKFILES) $(MCDIR)/datapacks

.PHONY: mantrid
mantrid: $(RESOURCEPACKFILES) $(DATAPACKFILES)
	rsync -auv $(RESOURCEPACKFILES) mantrid:$(MCDIR)/resourcepacks
	rsync -auv $(DATAPACKFILES) mantrid:$(MCDIR)/datapacks

.PHONY: uninstall
uninstall:
	cd $(MCDIR)/resourcepacks && rm -f $(PACKFILES)

.PHONY: clean
clean:
	rm -rf $(CLEAN_TARGETS)

