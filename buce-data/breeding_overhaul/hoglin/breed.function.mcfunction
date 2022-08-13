# runs as the server 1t after a player bred a hoglin

# store age of all hoglins
# child Age:-24000
execute as @e[type=hoglin] store result score @s var run data get entity @s Age

# mutate baby's traits
#data modify entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base set from entity @e[predicate=buce:breeding_overhaul/equine,tag=genes,distance=..2.1,limit=1,sort=random] Attributes[{Name:"minecraft:generic.max_health"}].Base
execute as @e[type=hoglin,scores={var=-24000}] at @s run data modify entity @s IsImmuneToZombification set value 1

