# runs as a rabbit that was slapped with a fish

# summon killer rabbit
summon rabbit ~ ~ ~ {Tags:["new"],RabbitType:99,ActiveEffects:[{Id:1,Amplifier:1,Duration:999999},{Id:8,Amplifier:1,Duration:999999}],DeathLootTable:"buce:mythic/bounding/killer_rabbit"}
data modify entity @e[type=minecraft:rabbit,tag=new,limit=1] Rotation set from entity @s Rotation
tag @e[type=minecraft:rabbit,tag=new,limit=1] remove new

# teleport into the void and die
teleport @s ~ ~-320 ~
kill @s

