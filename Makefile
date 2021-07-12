
RESOURCEPACKFILES = painting_overhaul.zip note_guide.zip brew_guide.zip \
	tech_arrows.zip ravager.zip villager_mech.zip pig_armor.zip ore_types.zip \
	discreet_pumpkin.zip stickier_piston.zip \
	classic_netherrack.zip classic_lava.zip classic_gravel.zip classic_lapis.zip classic_rose.zip classic_food.zip \
	classic_moo.zip classic_twang.zip classic_sploosh.zip classic_crunch.zip
DATAPACKFILES = gardener_endermen.zip climbable.zip speedy_paths.zip \
	no_treasure_maps.zip fortunate_jungle.zip dragonproof.zip \
	shearless.zip mixed_crafting.zip \
	loot_overhaul.zip artifact_loot.zip more_shulker_shells.zip \
	starter_bed.zip starter_book.zip starter_bucket.zip starter_map.zip starter_shulker.zip \
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
DEFAULT = CONTRIBUTORS.txt LICENSE.txt

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
	data/minecraft/tags/blocks/enderman_holdable.json

climbable_FILES := $(DEFAULT_FILES) \
	data/minecraft/tags/blocks/climbable.json \
	data/bucepack/advancements/root.json \
	data/bucepack/advancements/climbable.json

speedy_paths_FILES := $(DEFAULT_FILES) \
	data/minecraft/tags/blocks/soul_speed_blocks.json

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
	data/minecraft/loot_tables/blocks/jungle_leaves.json

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

artifact_loot_FILES := $(DEFAULT_FILES) \
	data/bucepack/advancements/artifact/activate_darkvision.json \
	data/bucepack/advancements/artifact/activate_absorbing.json \
	data/bucepack/advancements/artifact/activate_mining.json \
	data/bucepack/advancements/artifact/activate_bounding.json \
	data/bucepack/advancements/artifact/activate_breaking_pick.json \
	data/bucepack/advancements/artifact/activate_breaking_axe.json \
	data/bucepack/advancements/artifact/activate_breaking_shovel.json \
	data/bucepack/advancements/artifact/activate_breaking_hoe.json \
	data/bucepack/advancements/artifact/charge_fireball.json \
	data/bucepack/advancements/artifact/charge_flamethrower.json \
	data/bucepack/advancements/artifact/charge_stormcalling.json \
	data/bucepack/advancements/artifact/artifact_loot.json \
	data/bucepack/advancements/loot_overhaul/loot_overhaul.json \
	data/bucepack/advancements/root.json \
	data/bucepack/predicates/artifact/breaking/pick.json \
	data/bucepack/predicates/artifact/breaking/axe.json \
	data/bucepack/predicates/artifact/breaking/shovel.json \
	data/bucepack/predicates/artifact/breaking/hoe.json \
	data/bucepack/functions/artifact/darkvision/activate.mcfunction \
	data/bucepack/functions/artifact/absorbing/activate.mcfunction \
	data/bucepack/functions/artifact/mining/activate.mcfunction \
	data/bucepack/functions/artifact/bounding/activate.mcfunction \
	data/bucepack/functions/artifact/breaking/pick/activate.mcfunction \
	data/bucepack/functions/artifact/breaking/pick/mine.mcfunction \
	data/bucepack/functions/artifact/breaking/pick/break.mcfunction \
	data/bucepack/functions/artifact/breaking/pick/break_yz.mcfunction \
	data/bucepack/functions/artifact/breaking/pick/break_xz.mcfunction \
	data/bucepack/functions/artifact/breaking/pick/break_xy.mcfunction \
	data/bucepack/functions/artifact/breaking/axe/activate.mcfunction \
	data/bucepack/functions/artifact/breaking/axe/mine.mcfunction \
	data/bucepack/functions/artifact/breaking/axe/break.mcfunction \
	data/bucepack/functions/artifact/breaking/axe/chop.mcfunction \
	data/bucepack/functions/artifact/breaking/shovel/activate.mcfunction \
	data/bucepack/functions/artifact/breaking/shovel/mine.mcfunction \
	data/bucepack/functions/artifact/breaking/shovel/break.mcfunction \
	data/bucepack/functions/artifact/breaking/hoe/activate.mcfunction \
	data/bucepack/functions/artifact/breaking/hoe/mine.mcfunction \
	data/bucepack/functions/artifact/breaking/hoe/break.mcfunction \
	data/bucepack/functions/artifact/breaking/hoe/break_yz.mcfunction \
	data/bucepack/functions/artifact/breaking/hoe/break_xz.mcfunction \
	data/bucepack/functions/artifact/breaking/hoe/break_xy.mcfunction \
	data/bucepack/functions/artifact/fireball/activate.mcfunction \
	data/bucepack/functions/artifact/fireball/charge.mcfunction \
	data/bucepack/functions/artifact/fireball/reset.mcfunction \
	data/bucepack/functions/artifact/flamethrower/activate.mcfunction \
	data/bucepack/functions/artifact/flamethrower/charge.mcfunction \
	data/bucepack/functions/artifact/flamethrower/reset.mcfunction \
	data/bucepack/functions/artifact/load.mcfunction \
	data/bucepack/functions/artifact/stormcalling/activate.mcfunction \
	data/bucepack/functions/artifact/stormcalling/charge.mcfunction \
	data/bucepack/functions/artifact/stormcalling/check.mcfunction \
	data/bucepack/functions/artifact/stormcalling/reset.mcfunction \
	data/bucepack/loot_tables/artifact/subtables/artifact.json \
	data/bucepack/loot_tables/artifact/subtables/darkvision_helmet.json \
	data/minecraft/recipes/light.json \
	data/minecraft/tags/functions/load-artifact.json \

dragonproof_FILES := $(DEFAULT_FILES) \
	data/minecraft/tags/blocks/dragon_immune.json

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
	data/minecraft/loot_tables/blocks/weeping_vines_plant.json

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
	data/minecraft/tags/items/stone_tool_materials.json

more_shulker_shells_FILES := $(DEFAULT_FILES) \
	data/minecraft/loot_tables/entities/shulker.json

escape_end_FILES := $(DEFAULT_FILES) \
	data/minecraft/tags/functions/tick-escape.json \
	data/escape/functions/end_respawn.mcfunction \
	data/escape/functions/tick-end.mcfunction

escape_nether_FILES := $(DEFAULT_FILES) \
	data/minecraft/tags/functions/tick-escape.json \
	data/escape/functions/nether_respawn.mcfunction \
	data/escape/functions/tick-nether.mcfunction \
	data/escape/tags/blocks/airlava.json \
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
	data/escape/functions/locate_city.mcfunction

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
	data/minecraft/tags/items/starter_bed.json

starter_book_FILES := $(DEFAULT_FILES) \
	data/minecraft/tags/items/starter_book.json

starter_bucket_FILES := $(DEFAULT_FILES) \
	data/minecraft/tags/items/starter_bucket.json

starter_map_FILES := $(DEFAULT_FILES) \
	data/minecraft/tags/items/starter_map.json

starter_shulker_FILES := $(DEFAULT_FILES) \
	data/minecraft/tags/items/starter_shulker.json

test_FILES = \
	# nothing

.PHONY: all
all: $(PACKFILES)

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

loot_overhaul.zip: $(loot_overhaul_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^

artifact_loot.zip: $(artifact_loot_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	printf "@ data/minecraft/tags/functions/load-artifact.json\n@=data/minecraft/tags/functions/load.json\n" | zipnote -w $@

dragonproof.zip: $(dragonproof_FILES)
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
	printf "@ data/minecraft/tags/items/starter_bed.json\n@=data/minecraft/tags/items/starter.json\n" | zipnote -w $@

starter_book.zip: $(starter_book_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	printf "@ data/minecraft/tags/items/starter_book.json\n@=data/minecraft/tags/items/starter.json\n" | zipnote -w $@

starter_bucket.zip: $(starter_bucket_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	printf "@ data/minecraft/tags/items/starter_bucket.json\n@=data/minecraft/tags/items/starter.json\n" | zipnote -w $@

starter_map.zip: $(starter_map_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	printf "@ data/minecraft/tags/items/starter_map.json\n@=data/minecraft/tags/items/starter.json\n" | zipnote -w $@

starter_shulker.zip: $(starter_shulker_FILES)
	cp meta/$(@:.zip=.png) pack.png
	cp meta/$(@:.zip=.mcmeta) pack.mcmeta
	zip $@ pack.png pack.mcmeta $^
	printf "@ data/minecraft/tags/items/starter_shulker.json\n@=data/minecraft/tags/items/starter.json\n" | zipnote -w $@

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

