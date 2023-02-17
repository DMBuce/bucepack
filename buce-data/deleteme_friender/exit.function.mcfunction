# runs as a player exiting frienderchest

# revoke advancement
advancement revoke @s only buce:friender/exit

# debug
say exit

# teleport player to exit location
execute at @s run summon area_effect_cloud ~ ~ ~ {Tags:["exit"], Duration:2}
tag @s add leaving
execute as @e[type=area_effect_cloud,tag=exit,limit=1] run function buce:friender/leave
tag @s remove leaving

## teleport player to their spawn
#execute in minecraft:the_end run forceload add 0 0
#setblock 0 0 0 minecraft:end_portal
#tp @s 0 0 0
#setblock 0 0 0 minecraft:air
#execute in minecraft:the_end run forceload remove 0 0

