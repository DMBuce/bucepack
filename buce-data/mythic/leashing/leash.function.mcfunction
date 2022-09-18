# runs when a player hits a mob with a lasso

# revoke advancement
advancement revoke @s only buce:mythic/leashing/leash

## debug
#say Yeehaw!

# tag self
tag @s add leasher

# store player uuid
#
# use only uuid[0] to compare uuids since that requires less nbt access
# and collisions are unlikely
execute store result score #buce.leasher var run data get entity @s UUID[0]

# find mob that was hit
tag @e[type=#buce:mythic/leashing/leashable,distance=..8,nbt={HurtTime:10s},sort=nearest,limit=1] add roped

# try to remove lead from inventory
execute store result score @s var run clear @s minecraft:lead 1

# leash mob if we did
execute if score @s var matches 1.. as @e[tag=roped] at @s run data modify entity @s Leash.UUID set from entity @a[tag=leasher,limit=1] UUID
execute if score @s var matches 1.. if entity @e[type=minecraft:creeper,tag=roped] run function buce:mythic/leashing/torture

# cleanup
tag @s remove leasher
tag @e[type=#buce:mythic/leashing/leashable,tag=roped] remove roped

