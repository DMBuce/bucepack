# runs while a player charges gravitation

# revoke advancement
advancement revoke @s only bucepack:relic/gravitation/trigger

# pull all items within 6 blocks
#execute as @s at @e[type=item,distance=..6,limit=1,sort=nearest] facing entity @s eyes as @e[type=item,distance=..0.1] run function bucepack:relic/gravitation/pull
execute as @e[type=item,distance=..6,limit=1,sort=nearest] at @s facing entity @p eyes run function bucepack:relic/gravitation/pull

