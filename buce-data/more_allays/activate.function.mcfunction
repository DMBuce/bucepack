# runs when a player gives a cookie to an allay

# revoke advancement
advancement revoke @s only buce:more_allays/trigger

# replace cookie with pillager outpost map
loot replace entity @e[type=allay,limit=1,sort=nearest] weapon.mainhand loot buce:more_allays/illager_map

