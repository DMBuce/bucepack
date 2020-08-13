# runs as a werebunny that's not in creative/spectator mode

# debug
#say processing lich: @s

# strength, jump boost ii
effect give @s[nbt=!{ActiveEffects:[{Id:5b}]}] minecraft:strength 10000 0 true
#effect give @s[nbt=!{ActiveEffects:[{Id:10b}]}] minecraft:regeneration 10000 0 true
effect give @s[nbt=!{ActiveEffects:[{Id:8b}]}] minecraft:jump_boost 10000 1 true

# fast and hungry in moonlight
execute in minecraft:overworld run effect give @p[distance=0,scores={blocks_above=0,daytime=12542..}] minecraft:hunger 2 2 true
execute in minecraft:overworld run effect give @p[distance=0,scores={blocks_above=0,daytime=12542..}] minecraft:speed 2 0 true

# rabid rabbits
execute as @e[type=minecraft:rabbit,distance=0..16,team=!rabidbunny] run team join rabidbunny

# food in hand turns rotten, except for raw meat and carrots
function lichdom:rot_food

# fur - see bunny_form advancement and function

