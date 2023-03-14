# runs when a player wearing clown pants leashes an animal

# revoke advancement
advancement revoke @s only buce:mythic/balloons/leash

## debug
#say leash

# store player uuid
#
# use only uuid[0] to compare uuids since that requires less nbt access
# and collisions are unlikely
execute store result score #buce.leasher var run data get entity @s UUID[0]

# tag each mob leashed by player
execute as @e[distance=..12] run function buce:mythic/balloons/check

# give nearest leashed mob permanent levitation
effect give @e[type=#buce:mythic/balloons/balloons,tag=leashed,nbt=!{ActiveEffects:[{Id:25}]},sort=nearest,limit=1] minecraft:levitation infinite 0

# cleanup
tag @e[tag=leashed] remove leashed

# sound effect
playsound minecraft:block.enchantment_table.use player @a

