# runs as an "illusioner" disguised as a wandering trader

# turn nearby llamas into ravagers
execute as @e[type=trader_llama,distance=..12] at @s run function buce:illusory/trader/ravager

# turn self into illusioner
summon minecraft:illusioner ~ ~ ~ {Tags:["new"]}
data modify entity @e[type=minecraft:illusioner,tag=new,limit=1] Rotation set from entity @s Rotation
tag @e[type=minecraft:illusioner,tag=new] remove new

# cleanup
tp @s ~ ~-768 ~
kill @s

