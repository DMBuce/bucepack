# runs on server load in the frienderchest

## debug
#say init

## set world border
## https://bugs.mojang.com/browse/MC-246429
#worldborder center 8.0 8.0
#worldborder set 16
#worldborder warning distance 0
fill -2 -2 -2 17 17 17 minecraft:bedrock outline

# carve out room
fill 1 0 1 14 14 14 minecraft:air replace minecraft:obsidian

# set up exit portal
setblock 1 -1 1 minecraft:end_gateway
#setblock 1 -1 1 minecraft:end_gateway{ExitPortal:{X:0,Y:-32,Z:0},ExactTeleport:1b}
#setblock 0 -31 0 minecraft:air
#setblock 0 -32 0 minecraft:stone_pressure_plate
#setblock 0 -33 0 minecraft:repeating_command_block{auto:0b,Command:"execute as @p[distance=..3] in minecraft:overworld run function buce:friender/exit"}

