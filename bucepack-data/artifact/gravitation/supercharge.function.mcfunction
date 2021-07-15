# runs while a player charges gravitation

# pull all items within 6 blocks
execute as @s at @e[type=item,distance=..6] facing entity @s eyes as @e[type=item,distance=..0.1] run function bucepack:artifact/gravitation/pull

# revoke advancement
advancement revoke @s only bucepack:artifact/sneaking/trigger

