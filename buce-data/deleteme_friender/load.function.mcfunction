# runs on server load

# carve out spawn point if necessary
execute in buce:friender/chest run forceload add -1 -1 1 1
execute in buce:friender/chest positioned 0 0 0 if block 1 -1 1 minecraft:bedrock run function buce:friender/init
execute in buce:friender/chest run forceload remove -1 -1 1 1

## init frienderchest
#schedule function buce:friender/init 1t replace

# add objectives
scoreboard objectives add exit_x dummy
scoreboard objectives add exit_y dummy
scoreboard objectives add exit_z dummy

## reset objectives
#scoreboard players set * exit_d 0

