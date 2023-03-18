# runs when a player hits a mob with an illumination trident

# revoke advancement
advancement revoke @s only buce:mythic/illumination/trigger

## debug
#say zap

# summon light at the trident
execute as @e[type=trident,distance=..128,nbt={Trident:{tag:{illumination:1b}}},limit=1] at @s if block ~ ~ ~ #buce:mythic/illumination/light_replaceable run setblock ~ ~ ~ light

