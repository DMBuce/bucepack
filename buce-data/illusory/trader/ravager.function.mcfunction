# runs as a "ravager" disguised as a trader llama

# turn self into ravager
summon minecraft:ravager ~ ~ ~ {Tags:["new"]}
data modify entity @e[type=minecraft:ravager,tag=new,limit=1] Rotation set from entity @s Rotation
tag @e[type=minecraft:ravager,tag=new] remove new

# cleanup
tp @s ~ ~-768 ~
kill @s

