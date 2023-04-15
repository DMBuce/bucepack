# runs when a player uses a rebirth totem

# revoke advancement
advancement revoke @s only buce:deep/rebirth/trigger

## debug
#say activate

# move player to new spawnpoint
spreadplayers 0 0 1 3000000 under 128 false @s
execute at @s run spawnpoint @s ~ ~ ~

# give echo shard
execute at @s run loot spawn ~ ~ ~ loot buce:deep/shard

