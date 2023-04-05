# runs when a player feeds a crimson fungus to a hoglin

# revoke advancement
advancement revoke @s only buce:antidote/crimson_fungus/feed

# find nearby fed hoglins
execute as @e[type=hoglin,tag=!immune,distance=..8,nbt={PersistenceRequired:1b}] at @s run function buce:antidote/crimson_fungus/activate

