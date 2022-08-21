# runs when a player leashes an allay/golem/donkey/mule while sneaking

# revoke advancement
advancement revoke @s only buce:leashed/leash

## debug
#say leash

# store player uuid
#
# use only uuid[0] to compare uuids since that requires less nbt access
# and collisions are unlikely
execute store result score #buce.leasher var run data get entity @s UUID[0]

# tag each mob leashed by player
execute as @e[distance=..12] run function buce:leashed/check

# tag leader
tag @e[type=#buce:leashed/leader,tag=leashed,sort=nearest,limit=1] add leader

# attach each leashed non-leader to the leader
execute as @e[type=!#buce:leashed/leader,tag=leashed] run data modify entity @s Leash.UUID set from entity @e[type=#buce:leashed/leader,tag=leader,limit=1] UUID

# cleanup
tag @e[tag=leashed] remove leashed
tag @e[type=#buce:leashed/leader,tag=leader] remove leader

