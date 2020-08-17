# runs as a player in the end or nether who hasn't completed an escape challenge

# add tnt to starting gear
execute in minecraft:the_end as @p[distance=0..] at @s run give @s minecraft:tnt 64

# nether respawn stuff
execute in minecraft:the_nether as @p[distance=0..] at @s run give @s minecraft:saddle
execute in minecraft:the_nether as @p[distance=0..] at @s run give @s minecraft:warped_fungus_on_a_stick

