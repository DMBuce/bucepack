# runs while a player charges finding

# reset charge 2t i.e. 0.2s from the last time this function is called
schedule function bucepack:artifact/uncharge 2t replace

# increment charge
scoreboard players add @s charge 1

# display particles
#execute as @s[scores={city_delta=0..9}] positioned ~ ~1.6 ~ run particle falling_dust minecraft:end_stone ^ ^ ^1.5 0 0 0 0.01 1
#execute as @s[scores={city_delta=10..}] positioned ~ ~1.6 ~ run particle falling_dust minecraft:purpur_block ^ ^ ^1.5 0 0 0 0.01 1
#execute as @s[scores={city_delta=0..9}] positioned ~ ~1.6 ~ run particle dust 0.93 0.96 0.71 0.5 ^ ^ ^1.5 0 0 0 1 1
#execute as @s[scores={city_delta=10..}] positioned ~ ~1.6 ~ run particle dust 0.70 0.53 0.70 0.5 ^ ^ ^1.5 0 0 0 1 1
execute if entity @s[scores={var=0..10}] anchored eyes run particle dust 0.93 0.96 0.71 0.5 ^ ^ ^1.5 0 0 0 1 1
execute if entity @s[scores={var=10..}] anchored eyes run particle dust 0.70 0.53 0.70 0.5 ^ ^ ^1.5 0 0 0 1 1

# ping 1/s if looking towards structure or 2/s if looking directly at it
execute if entity @s[scores={charge=20..,var=0..7}] run function bucepack:artifact/finding/ding
execute if entity @s[scores={charge=10..,var=7..10}] run function bucepack:artifact/finding/ding
execute if entity @s[scores={charge=10..,var=10..}] unless entity @e[type=snowball,tag=finding_eye,distance=50] run function bucepack:artifact/finding/activate


