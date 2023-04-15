# runs when a player uses a rebuke totem

# revoke advancement
advancement revoke @s only buce:deep/rebuke/trigger

## debug
#say activate

# damage attackers
tag @s add rebuker
execute on attacker run damage @s 15 minecraft:sonic_boom by @a[tag=rebuker,limit=1]
tag @s remove rebuker

# give echo shard
loot spawn ~ ~ ~ loot buce:deep/shard

