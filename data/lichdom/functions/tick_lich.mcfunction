# runs as a lich that's not in creative/spectator mode

# debug
#say processing lich: @s

# poisoned by direct sunlight
execute in minecraft:overworld run effect give @p[distance=0,scores={blocks_above=0,daytime=0..12541},nbt=!{ActiveEffects:[{Id:19b}]}] minecraft:poison 3 0 true
execute in minecraft:overworld run effect give @p[distance=0,scores={blocks_above=0,daytime=0..12541},nbt={ActiveEffects:[{Id:19b,Duration:30}]}] minecraft:poison 3 0 true

# undead won't attack
execute as @e[type=#lichdom:undead,distance=0..32,team=!lich] run team join lich @s

# fiendish bats and rabbits
execute as @e[type=minecraft:rabbit,distance=0..16,team=!rabidbunny] run team join rabidbunny
execute as @e[type=minecraft:bat,distance=0..16,team=!vampire] run team join vampire @s

# food in hand turns rotten
function lichdom:rot_food

# steal necromantic energy - see steal_unlife advancement and function

