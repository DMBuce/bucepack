# runs when a player activates splendor with a notch apple

# revoke advancement
advancement revoke @s only bucepack:mythic/splendor/trigger

# find the horse we clicked on
scoreboard players set @s var 6
execute anchored eyes positioned ^ ^ ^0.69825 run function bucepack:mythic/splendor/raycast

# upgrade horse
execute as @e[type=horse,tag=clicked,distance=..10] at @s run function bucepack:mythic/splendor/upgrade

