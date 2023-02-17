
## Resources

https://www.reddit.com/r/MinecraftCommands/wiki/questions
https://www.reddit.com/r/MinecraftCommands/wiki/optimising
scheduler: https://www.reddit.com/r/MinecraftCommands/comments/c939nx/best_ways_to_optimize_datapacks/
avoid @e and nbt
use area effect clouds over armor stands
* /summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648}
ordering target selectors:
* https://github.com/MinecraftCommands/commanders-handbook/blob/3b5c82231397cee1e4dfe51caa523c180892b3f5/docs/_posts/2018-09-07-selector-argument-order.md
* foo_
* https://www.reddit.com/r/MinecraftCommands/comments/nw90u4/does_using_predicates_in_place_of_complicated/h18lr5u/
raycast: https://www.reddit.com/r/MinecraftCommands/comments/9n1ghh/raycasting_in_1131/e7kxv2o/
check if player is looking toward/away: https://www.reddit.com/r/MinecraftCommands/comments/akjyh5/help_any_way_to_execute_if_a_player_is_looking_at/ef5jehw/
item nbt structure: https://minecraft.fandom.com/wiki/Player.dat_format#Item_structure
json text components: https://minecraft.fandom.com/wiki/Raw_JSON_text_format#Component_resolution

### Version History

In addition to the minecraft wiki,

* 1.19: https://www.reddit.com/r/Minecraft/comments/v6xze8/minecraft_java_edition_119_the_wild_update_has/

## Best Practices

Prefer @a over @e[type=player]
Prefer predicates over nbt
*Don't* prefer predicates over non-nbt selectors
Prefer area effect clouds over armor stands
Pick the right marker entity: https://imgur.com/VTYb4xM
Order target selectors efficiently: https://www.reddit.com/r/MinecraftCommands/comments/nw90u4/does_using_predicates_in_place_of_complicated/h18lr5u/
* https://github.com/MinecraftCommands/commanders-handbook/blob/3b5c82231397cee1e4dfe51caa523c180892b3f5/docs/_posts/2018-09-07-selector-argument-order.md
* foo_

## Good to Know

charge time
* bow: 1s
* crossbow: 1.25s
* trident: faster than bow i guess?

## Advancement Triggers

https://minecraft.fandom.com/wiki/Advancement/JSON_format#List_of_triggers

### Generic

    minecraft:changed_dimension
    minecraft:consume_item
    minecraft:enter_block
    minecraft:entity_hurt_player
    minecraft:entity_killed_player
    minecraft:impossible
    minecraft:inventory_changed
    minecraft:item_durability_changed
    minecraft:item_used_on_block
    minecraft:location
    minecraft:placed_block
    minecraft:player_hurt_entity
    minecraft:player_interacted_with_entity
    minecraft:player_killed_entity
    minecraft:tick
    minecraft:using_item

### Specific

    minecraft:bee_nest_destroyed
    minecraft:bred_animals
    minecraft:brewed_potion
    minecraft:channeled_lightning
    minecraft:construct_beacon
    minecraft:cured_zombie_villager
    minecraft:effects_changed
    minecraft:enchanted_item
    minecraft:filled_bucket
    minecraft:fishing_rod_hooked
    minecraft:hero_of_the_village
    minecraft:killed_by_crossbow
    minecraft:levitation
    minecraft:lightning_strike
    minecraft:nether_travel
    minecraft:player_generates_container_loot
    minecraft:recipe_unlocked
    minecraft:shot_crossbow
    minecraft:slept_in_bed
    minecraft:slide_down_block
    minecraft:started_riding
    minecraft:summoned_entity
    minecraft:tame_animal
    minecraft:target_hit
    minecraft:thrown_item_picked_up_by_entity
    minecraft:used_ender_eye
    minecraft:used_totem
    minecraft:villager_trade
    minecraft:voluntary_exile

## Predicate Conditions

https://minecraft.fandom.com/wiki/Predicate

    alternative - Joins conditions from parameter terms with "or".
    block_state_property - Check properties of a block state.
    damage_source_properties - Check properties of damage source.
    entity_properties - Test properties of an entity.
    entity_scores - Test the scoreboard scores of an entity.
    inverted - Inverts condition from parameter term.
    killed_by_player - Test if a killer_player entity is available.
    location_check - Checks if the current location matches.
    match_tool - Checks tool.
    random_chance - Test if a random number 0.0–1.0 is less than a specified value.
    random_chance_with_looting - Test if a random number 0.0–1.0 is less than a specified value, affected by the level of Looting on the killer entity.
    reference - Test if another referred condition (predicate) passes.
    survives_explosion - Returns true with 1/explosion radius probability.
    table_bonus - Passes with probability picked from table, indexed by enchantment level.
    time_check - Checks the current time
    weather_check - Checks for a current weather state 
    value_check - Checks for range of value

## Scoreboard Objective Criteria

https://minecraft.fandom.com/wiki/Scoreboard#Criteria

### Simple Criteria

    dummy
    trigger
    deathCount
    playerKillCount
    totalKillCount
    health
    xp
    level
    food
    air
    armor

### Compound Criteria

    teamkill.<team_color>
    killedByTeam.<team_color>

### Compound Statistic Criteria

https://minecraft.fandom.com/wiki/Statistics#Statistic_types_and_names

    minecraft.mined:<block_mined>
    minecraft.broken:<item_broken>
    minecraft.crafted:<item_crafted>
    minecraft.used:<item_used>
    minecraft.picked_up:<item_picked_up>
    minecraft.dropped:<item_dropped>
    minecraft.killed:<entity_that_player_killed>
    minecraft.killed_by:<entity_that_killed_player>

https://minecraft.fandom.com/wiki/Statistics#List_of_custom_statistic_names

    minecraft.custom:minecraft.animals_bred
    minecraft.custom:minecraft.clean_armor
    minecraft.custom:minecraft.clean_banner
    minecraft.custom:minecraft.open_barrel
    minecraft.custom:minecraft.bell_ring
    minecraft.custom:minecraft.eat_cake_slice
    minecraft.custom:minecraft.fill_cauldron
    minecraft.custom:minecraft.open_chest
    minecraft.custom:minecraft.damage_absorbed
    minecraft.custom:minecraft.damage_blocked_by_shield
    minecraft.custom:minecraft.damage_dealt
    minecraft.custom:minecraft.damage_dealt_absorbed
    minecraft.custom:minecraft.damage_dealt_resisted
    minecraft.custom:minecraft.damage_resisted
    minecraft.custom:minecraft.damage_taken
    minecraft.custom:minecraft.inspect_dispenser
    minecraft.custom:minecraft.climb_one_cm
    minecraft.custom:minecraft.crouch_one_cm
    minecraft.custom:minecraft.fall_one_cm
    minecraft.custom:minecraft.fly_one_cm
    minecraft.custom:minecraft.sprint_one_cm
    minecraft.custom:minecraft.swim_one_cm
    minecraft.custom:minecraft.walk_one_cm
    minecraft.custom:minecraft.walk_on_water_one_cm
    minecraft.custom:minecraft.walk_under_water_one_cm
    minecraft.custom:minecraft.boat_one_cm
    minecraft.custom:minecraft.aviate_one_cm
    minecraft.custom:minecraft.horse_one_cm
    minecraft.custom:minecraft.minecart_one_cm
    minecraft.custom:minecraft.pig_one_cm
    minecraft.custom:minecraft.strider_one_cm
    minecraft.custom:minecraft.inspect_dropper
    minecraft.custom:minecraft.open_enderchest
    minecraft.custom:minecraft.fish_caught
    minecraft.custom:minecraft.leave_game
    minecraft.custom:minecraft.inspect_hopper
    minecraft.custom:minecraft.interact_with_anvil
    minecraft.custom:minecraft.interact_with_beacon
    minecraft.custom:minecraft.interact_with_blast_furnace
    minecraft.custom:minecraft.interact_with_brewingstand
    minecraft.custom:minecraft.interact_with_campfire
    minecraft.custom:minecraft.interact_with_cartography_table
    minecraft.custom:minecraft.interact_with_crafting_table
    minecraft.custom:minecraft.interact_with_furnace
    minecraft.custom:minecraft.interact_with_grindstone
    minecraft.custom:minecraft.interact_with_lectern
    minecraft.custom:minecraft.interact_with_loom
    minecraft.custom:minecraft.interact_with_smithing_table
    minecraft.custom:minecraft.interact_with_smoker
    minecraft.custom:minecraft.interact_with_stonecutter
    minecraft.custom:minecraft.drop
    minecraft.custom:minecraft.enchant_item
    minecraft.custom:minecraft.jump
    minecraft.custom:minecraft.mob_kills
    minecraft.custom:minecraft.play_record
    minecraft.custom:minecraft.play_noteblock
    minecraft.custom:minecraft.tune_noteblock
    minecraft.custom:minecraft.deaths
    minecraft.custom:minecraft.pot_flower
    minecraft.custom:minecraft.player_kills
    minecraft.custom:minecraft.raid_trigger
    minecraft.custom:minecraft.raid_win
    minecraft.custom:minecraft.clean_shulker_box
    minecraft.custom:minecraft.open_shulker_box
    minecraft.custom:minecraft.sneak_time
    minecraft.custom:minecraft.talked_to_villager
    minecraft.custom:minecraft.target_hit
    minecraft.custom:minecraft.play_time
    minecraft.custom:minecraft.time_since_death
    minecraft.custom:minecraft.time_since_rest
    minecraft.custom:minecraft.total_world_time
    minecraft.custom:minecraft.sleep_in_bed
    minecraft.custom:minecraft.traded_with_villager
    minecraft.custom:minecraft.trigger_trapped_chest
    minecraft.custom:minecraft.use_cauldron

