# runs when a player unleashes an allay/golem/donkey/mule while sneaking

# revoke advancement
advancement revoke @s only buce:leashed/unleash

## debug
#say unleash

# tag leader and store its uuid
#
# use only uuid[0] to compare uuids since that requires less nbt access
# and collisions are unlikely
tag @e[type=#buce:leashed/leader,distance=..8,sort=nearest,limit=1,nbt=!{Leash:{}}] add leader
execute store result score #buce.leasher var run data get entity @e[type=#buce:leashed/leader,tag=leader,limit=1] UUID[0]

# tag each mob leashed by leader
execute as @e[type=#buce:leashed/leader,tag=leader] at @s as @e[type=!#buce:leashed/leader,distance=..12] run function buce:leashed/check

execute as @e[type=!#buce:leashed/leader,tag=leashed] run say unleashed

# tag player
tag @s add leashplayer

# attach each leashed mob to player
#execute as @e[type=!#buce:leashed/leader,tag=leashed] at @s run data remove entity @s Leash
execute as @e[type=!#buce:leashed/leader,tag=leashed] run data modify entity @s Leash.UUID set from entity @a[tag=leashplayer,limit=1] UUID
#execute as @e[type=!#buce:leashed/leader,tag=leashed] at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:lead",Count:1b}}

# cleanup
tag @a[tag=leashplayer] remove leashplayer
tag @e[type=!#buce:leashed/leader,tag=leashed] remove leashed
tag @e[type=#buce:leashed/leader,tag=leader] remove leader



## leash mobs to nearest leader
#tag @e[type=#buce:leashed/leader,distance=..8,sort=nearest,limit=1] add leader
#execute as @e[type=!#buce:leashed/leader,distance=..12,nbt={Leash:{}}] run data modify entity @s Leash.UUID set from entity @e[type=#buce:leashed/leader,tag=leader,limit=1] UUID
#
## cleanup
#tag @e[type=#buce:leashed/leader,tag=leader] remove leader

