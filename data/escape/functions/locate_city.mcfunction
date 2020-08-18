# runs as a player in the end with an ender eye in each hand

# compute city_delta
execute store result score @s city_delta run locate endcity
execute positioned ^ ^ ^10.3 store result score @s city_distance run locate endcity
scoreboard players operation @s city_delta -= @s city_distance

# display particles
#execute as @s[scores={city_delta=0..9}] positioned ~ ~1.6 ~ run particle falling_dust minecraft:end_stone ^ ^ ^1.5 0 0 0 0.01 1
#execute as @s[scores={city_delta=10..}] positioned ~ ~1.6 ~ run particle falling_dust minecraft:purpur_block ^ ^ ^1.5 0 0 0 0.01 1
execute as @s[scores={city_delta=0..9}] positioned ~ ~1.6 ~ run particle dust 0.93 0.96 0.71 0.5 ^ ^ ^1.5 0 0 0 1 1
execute as @s[scores={city_delta=10..}] positioned ~ ~1.6 ~ run particle dust 0.70 0.53 0.70 0.5 ^ ^ ^1.5 0 0 0 1 1

