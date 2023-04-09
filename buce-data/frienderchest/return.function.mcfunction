# runs as an area effect cloud near a player that left the frienderchest

## debug
#say return

# teleport player to exit location
execute store result entity @s Pos[0] double 1 run scoreboard players get @a[tag=leaving,limit=1] exit_x
execute store result entity @s Pos[1] double 1 run scoreboard players get @a[tag=leaving,limit=1] exit_y
execute store result entity @s Pos[2] double 1 run scoreboard players get @a[tag=leaving,limit=1] exit_z
#execute in minecraft:overworld run tp @s ~ ~ ~
#teleport @s @s
teleport @a[tag=leaving,limit=1] @s
execute as @a[tag=leaving,limit=1] at @s run tp @s ~0.5 ~0.5 ~0.5
#tellraw @a ["x: ", {"nbt": "Pos[0]", "entity": "@s"}]
#tellraw @a ["y: ", {"nbt": "Pos[1]", "entity": "@s"}]
#tellraw @a ["z: ", {"nbt": "Pos[2]", "entity": "@s"}]
#execute as @a[tag=leaving,limit=1] at @s in minecraft:overworld run tp @s ~ ~ ~
kill @s

