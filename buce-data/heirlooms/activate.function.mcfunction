# runs when a player dies

# revoke advancement
advancement revoke @s only buce:heirlooms/trigger

## debug
#say heirlooms

# reset score
scoreboard players set @s died 0

# disable despawn timer of dropped items
execute as @e[type=minecraft:item,distance=..4,nbt={Age:0s}] run data modify entity @s Age set value -32768

