# runs as an "illusioner" disguised as a wandering trader

# turn nearby llamas into ravagers
execute as @e[type=trader_llama,distance=..12] at @s run function buce:illusory/trader/ravager

# turn self into illusioner
summon minecraft:illusioner ~ ~ ~ {Tags:["new"],DeathLootTable:"buce:illusory/trader/illusioner",CanJoinRaid:1b,LeftHanded:1b,HandItems:[{id:"minecraft:bow",Count:1b,tag:{Damage:0}},{}]}
data modify entity @e[type=minecraft:illusioner,tag=new,limit=1] Rotation set from entity @s Rotation
tag @e[type=minecraft:illusioner,tag=new,limit=1] remove new

# cleanup
teleport @s ~ ~-768 ~
kill @s

