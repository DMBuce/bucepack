# runs as a player exiting the frienderchest

# revoke advancement
advancement revoke @s only buce:frienderchest/exit

## debug
#say exit

# teleport player to overworld
execute in minecraft:overworld run tp @s ~ 512 ~

## teleport player to their spawn
#execute in minecraft:the_end run forceload add 0 0
#setblock 0 0 0 minecraft:end_portal
#tp @s 0 0 0
#setblock 0 0 0 minecraft:air
#execute in minecraft:the_end run forceload remove 0 0

