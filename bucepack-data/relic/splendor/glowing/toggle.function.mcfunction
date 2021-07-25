# runs when a player activates splendor with a gold apple

# revoke advancement
advancement revoke @s only bucepack:relic/splendor/glowing/trigger_toggle

# find the horse we clicked on
scoreboard players set @s var 6
execute positioned ^ ^ ^0.69825 run function bucepack:relic/splendor/raycast

# toggle permanent glowing
execute as @e[type=horse,tag=clicked,distance=..10] run function bucepack:relic/splendor/glowing/permanent

