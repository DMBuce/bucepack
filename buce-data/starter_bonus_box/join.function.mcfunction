# runs as a player that joined the world

# give player a shulker with bonus chest loot
#give @s brown_shulker_box{HideFlags:32b,display:{Lore:["\"§r§7Spawn Bonus\""]},BlockEntityTag:{Items:[],LootTable:"minecraft:chests/spawn_bonus_chest"}}
give @s brown_shulker_box[lore=['{"text":"Bonus Spawn","color":"gray","italic":false}'],container_loot={loot_table:"minecraft:chests/spawn_bonus_chest"},hide_additional_tooltip={}]

