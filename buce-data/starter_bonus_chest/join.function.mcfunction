# runs as a player that joined the world

# give player a bonus chest loot
#loot give @s loot minecraft:chests/spawn_bonus_chest
#give @s chest{display:{Lore:["\"§r§7Spawn Bonus\""]},BlockEntityTag:{LootTable:"minecraft:chests/spawn_bonus_chest"}}
#give @s chest[lore=["§r§7Spawn Bonus"],container_loot={loot_table:"minecraft:chests/spawn_bonus_chest"}]
give @s chest[lore=['{"text":"Bonus Spawn","color":"gray","italic":false}'],container_loot={loot_table:"minecraft:chests/spawn_bonus_chest"},hide_additional_tooltip={}]

