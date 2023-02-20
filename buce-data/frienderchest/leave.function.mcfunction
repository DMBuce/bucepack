# runs as a player that left the frienderchest

# revoke advancement
advancement revoke @s only buce:frienderchest/leave

## debug
#say leave

# teleport player to exit location
execute at @s run summon area_effect_cloud ~ ~ ~ {Tags:["exit"], Duration:1}
tag @s add leaving
execute as @e[type=area_effect_cloud,tag=exit,limit=1] run function buce:frienderchest/return
tag @s remove leaving

