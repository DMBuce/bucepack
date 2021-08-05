# runs while a player charges searching while looking for an jungle_pyramid

# revoke advancement
advancement revoke @s only bucepack:relic/searching/jungle_pyramid/trigger

# compute @s var - value between -10.3 and 10.3,
#                  10.3 means player is directly facing structure,
#                  -10.3 means player is directly facing away from structure
execute anchored eyes store result score @s var run locate jungle_pyramid
execute anchored eyes positioned ^ ^ ^10 store result score #buce.searching_distance var run locate jungle_pyramid
scoreboard players operation @s var -= #buce.searching_distance var

# do other charge tasks
function bucepack:relic/searching/charge

