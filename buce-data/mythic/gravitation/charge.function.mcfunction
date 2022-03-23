# runs while a player charges gravitation

# revoke advancement
advancement revoke @s only buce:mythic/gravitation/trigger

# pull all items within 6 blocks
#execute as @s at @e[type=item,distance=..6,limit=1,sort=nearest] facing entity @s eyes as @e[type=item,distance=..0.1] run function buce:mythic/gravitation/pull
execute as @e[type=item,distance=..6,limit=1,sort=nearest] at @s facing entity @p eyes run function buce:mythic/gravitation/pull

