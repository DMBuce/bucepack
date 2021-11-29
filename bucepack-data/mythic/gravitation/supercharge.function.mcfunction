# runs while a player charges gravitation

# revoke advancement
advancement revoke @s only bucepack:mythic/gravitation/trigger_sneaking

# pull all items within 6 blocks
#execute as @s at @e[type=item,distance=..6] facing entity @s eyes as @e[type=item,distance=..0.1] run function bucepack:mythic/gravitation/pull
execute as @e[type=item,distance=..6] at @s facing entity @p eyes run function bucepack:mythic/gravitation/pull

