# runs on server load

# carve out spawn point if necessary
execute in buce:frienderchest/chest run forceload add -1 -1 1 1
execute in buce:frienderchest/chest positioned 0 0 0 if block 1 -1 1 minecraft:reinforced_deepslate run function buce:frienderchest/init
execute in buce:frienderchest/chest run forceload remove -1 -1 1 1

# add objectives
scoreboard objectives add exit_x dummy
scoreboard objectives add exit_y dummy
scoreboard objectives add exit_z dummy

## reset objectives
#scoreboard players set * exit_d 0

