# runs on server load in the frienderchest

## debug
#say init

# carve out room
fill -2 -2 -2 17 17 17 minecraft:bedrock outline
fill 0 0 0 15 15 15 minecraft:crying_obsidian replace
fill 1 0 1 14 14 14 minecraft:air replace
place template buce:frienderchest/chest ~ ~ ~ none none 0.93

# set up exit portal
setblock 1 -1 1 minecraft:end_gateway

# add a minor hazard
setblock ~15 1 ~15 minecraft:spawner{SpawnData:{entity:{id:"minecraft:endermite"}}}

# carve out safety hole in overworld
execute in minecraft:overworld positioned 1 0 1 run fill ~ ~ ~ ~ ~1 ~ minecraft:air replace #minecraft:lush_ground_replaceable

