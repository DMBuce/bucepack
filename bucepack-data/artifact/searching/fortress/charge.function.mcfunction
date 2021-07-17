# runs while a player charges searching while looking for an fortress

# revoke advancement
advancement revoke @s only bucepack:artifact/searching/fortress/trigger

# compute @s var - value between -10.3 and 10.3,
#                  10.3 means player is directly facing structure,
#                  -10.3 means player is directly facing away from structure
execute anchored eyes store result score @s var run locate fortress
execute anchored eyes positioned ^ ^ ^10 store result score #buce.searching_distance var run locate fortress
scoreboard players operation @s var -= #buce.searching_distance var

# do other charge tasks
function bucepack:artifact/searching/charge

