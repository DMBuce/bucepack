# runs every tick

execute in minecraft:overworld as @a[distance=0..,advancements={minecraft:end/elytra=false}] at @s run function escape:end_respawn
execute in minecraft:overworld as @a[distance=0..,advancements={minecraft:end/kill_dragon=false}] at @s run function escape:end_respawn

