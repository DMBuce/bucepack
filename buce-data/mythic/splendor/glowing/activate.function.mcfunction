# runs when a player activates splendor

# revoke advancement
advancement revoke @s only buce:mythic/splendor/glowing/trigger

# find the horse we clicked on
scoreboard players set @s var 6
execute positioned ^ ^ ^0.69825 run function buce:mythic/splendor/raycast

# give glowing
execute as @e[type=horse,tag=clicked,distance=..10] run function buce:mythic/splendor/glowing/temporary

