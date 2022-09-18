# runs when a player unleashes a cat while sneaking

# revoke advancement
advancement revoke @s only buce:leashed/egg/unleash

## debug
#say unleash

# tag leader and store its uuid
#
# use only uuid[0] to compare uuids since that requires less nbt access
# and collisions are unlikely
tag @e[type=minecraft:cat,distance=..8,sort=nearest,limit=1,nbt=!{Leash:{}}] add leader
execute store result score #buce.leasher var run data get entity @e[type=minecraft:cat,tag=leader,limit=1] UUID[0]

# tag each mob leashed by leader
execute as @e[type=minecraft:cat,tag=leader] at @s as @e[type=!minecraft:cat,distance=..12] run function buce:leashed/check

#execute as @e[type=!minecraft:cat,tag=leashed] run say unleashed

# tag player
tag @s add leashplayer

# attach each leashed mob to player
execute as @e[type=!minecraft:cat,tag=leashed] run data modify entity @s Leash.UUID set from entity @a[tag=leashplayer,limit=1] UUID

# cleanup
tag @a[tag=leashplayer] remove leashplayer
tag @e[type=!minecraft:cat,tag=leashed] remove leashed
tag @e[type=minecraft:cat,tag=leader] remove leader

