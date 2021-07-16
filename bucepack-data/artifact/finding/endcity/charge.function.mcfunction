# runs while a player charges finding while looking for an endcity

# revoke advancement
advancement revoke @s only bucepack:artifact/finding/endcity/trigger

# compute @s var - value between -10.3 and 10.3,
#                  10.3 means player is directly facing structure,
#                  -10.3 means player is directly facing away from structure
execute store result score @s var run locate endcity
execute positioned ^ ^ ^10.3 store result score #buce.finding_distance var run locate endcity
scoreboard players operation @s var -= #buce.finding_distance var

# do other charge tasks
bucepack:artifact/finding/charge

