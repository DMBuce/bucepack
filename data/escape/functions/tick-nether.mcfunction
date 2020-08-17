# runs every tick

execute in minecraft:overworld as @a[distance=0..,advancements={escape:kill_wither=false}] at @s run function escape:nether_respawn
#execute as @e[type=armor_stand,tag=spawn_column] at @e run function escape:spawn_column

