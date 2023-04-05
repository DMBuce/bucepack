# runs as the server 1t after a player bred a hoglin

## debug
#say check

## store age of all hoglins
## child Age:-24000
#execute as @e[type=hoglin] store result score @s var run data get entity @s Age

# mutate baby's traits
#execute as @e[type=hoglin,scores={var=-24000}] at @s run data modify entity @s IsImmuneToZombification set value 1
execute as @e[type=hoglin,tag=!immune,nbt={Age:-24000}] at @s run function buce:antidote/crimson_fungus/activate

