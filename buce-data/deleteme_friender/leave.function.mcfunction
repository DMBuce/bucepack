# runs as an area effect cloud near a player exiting frienderchest

# teleport player to exit location
execute store result entity @s Pos[0] double 1 run scoreboard players get @a[tag=leaving,limit=1] exit_x
execute store result entity @s Pos[1] double 1 run scoreboard players get @a[tag=leaving,limit=1] exit_y
execute store result entity @s Pos[2] double 1 run scoreboard players get @a[tag=leaving,limit=1] exit_z
#execute in minecraft:overworld run tp @s ~ ~ ~
#tp @s @s
execute in minecraft:overworld positioned as @s run tp @a[tag=leaving,limit=1] ~ ~ ~
#tellraw @a ["x: ", {"nbt": "Pos[0]", "entity": "@s"}]
#tellraw @a ["y: ", {"nbt": "Pos[1]", "entity": "@s"}]
#tellraw @a ["z: ", {"nbt": "Pos[2]", "entity": "@s"}]
#execute as @a[tag=leaving,limit=1] at @s in minecraft:overworld run tp @s ~ ~ ~
kill @s

