# runs as a human vampire that's not in creative/spectator mode

# debug
#say processing lich: @s

# night vision, regen
effect give @s[nbt=!{ActiveEffects:[{Id:16b}]}] minecraft:night_vision 10000 0 true
#effect give @s[nbt=!{ActiveEffects:[{Id:5b}]}] minecraft:strength 10000 0 true
effect give @s[nbt=!{ActiveEffects:[{Id:10b}]}] minecraft:regeneration 10000 0 true

# withered by direct sunlight
execute in minecraft:overworld run effect give @p[distance=0,scores={blocks_above=0,daytime=0..12541},nbt=!{ActiveEffects:[{Id:20b}]}] minecraft:wither 2 0 true

# undead won't attack
execute as @e[type=#lichdom:undead,distance=0..32,team=!vampire] at @s unless entity @a[team=lich,distance=0..32] run team join vampire @s

# vampire bats
execute as @e[type=minecraft:bat,distance=0..16,team=!vampire] run team join vampire @s

# food in hand turns rotten
function lichdom:rot_food

# wings - see vampire_form advancement and function

# drink blood - see drink_blood advancement and function

