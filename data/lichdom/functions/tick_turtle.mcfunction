# runs as a turtle that's not in creative/spectator mode

# debug
#say processing lich: @s

# slowness, resistance
effect give @s[nbt=!{ActiveEffects:[{Id:2b}]}] minecraft:slowness 10000 0 true
effect give @s[nbt=!{ActiveEffects:[{Id:11b}]}] minecraft:resistance 10000 2 true
effect give @s[nbt=!{ActiveEffects:[{Id:30b}]}] minecraft:dolphins_grace 10000 0 true

# die if shell breaks
scoreboard players set @s[nbt=!{Inventory:[{Slot:103b,id:"minecraft:turtle_helmet"}]}] shell_broke 1
execute as @s[nbt=!{Inventory:[{Slot:103b,id:"minecraft:turtle_helmet"}]}] run gamerule showDeathMessages false
kill @s[nbt=!{Inventory:[{Slot:103b,id:"minecraft:turtle_helmet"}]}]

# food in hand turns rotten, except for dried kelp
function lichdom:rot_food

# shell - see turtle_form advancement and function

