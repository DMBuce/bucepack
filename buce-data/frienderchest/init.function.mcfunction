# runs on server load in the frienderchest

## debug
#say init

# carve out room
#fill -8 -8 -8 23 23 23 minecraft:reinforced_deepslate replace minecraft:bedrock
#fill -16 -2 -16 31 8 31 minecraft:reinforced_deepslate replace minecraft:bedrock
#fill -16 8 -16 31 17 31 minecraft:reinforced_deepslate replace minecraft:bedrock
fill -1 0 -1 16 16 16 minecraft:crying_obsidian outline
fill 0 0 0 15 16 15 minecraft:obsidian replace
fill 1 0 1 14 15 14 minecraft:air replace

# set up exit portal
setblock 1 -1 1 minecraft:end_gateway

# add a minor hazard
setblock ~15 1 ~15 minecraft:spawner{SpawnData:{entity:{id:"minecraft:endermite"}}}

