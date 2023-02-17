# runs on server load at the frienderchestchest build site

# build frienderchestchest
fill ~-1 0 ~-1 ~16 16 ~16 minecraft:reinforced_deepslate outline
fill ~ 0 ~ ~15 15 ~15 minecraft:obsidian outline
fill ~-2 0 ~-2 ~17 17 ~17 minecraft:bedrock outline
fill ~1 1 ~1 ~14 14 ~14 minecraft:air replace minecraft:obsidian

# set up exit portal
setblock ~1 0 ~1 minecraft:end_portal

# add a minor hazard
setblock ~15 2 ~15 minecraft:spawner{SpawnData:{entity:{id:"minecraft:endermite"}}}

