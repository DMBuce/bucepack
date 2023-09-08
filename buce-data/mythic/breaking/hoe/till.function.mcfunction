# runs when player uses a breaking hoe

# revoke advancement
advancement revoke @s only buce:mythic/breaking/hoe/trigger_tilling

# replace tillable blocks with farmland
execute if entity @s[tag=breaking_enabled] run fill ~-5 ~-1 ~-5 ~5 ~1 ~5 minecraft:farmland replace #buce:mythic/breaking/hoe/tillable

# visual and sound effects
particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0.03 8
#playsound minecraft:entity.silverfish.ambient player @a ~ ~ ~

