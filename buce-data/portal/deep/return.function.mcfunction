# runs as an area effect cloud near a player tooting a deep gate horn

# debug
say return

# teleport player to exit location
data modify entity @s Pos set from entity @a[tag=leaving,limit=1] SelectedItem.tag.GatePos
#execute store result entity @s Pos[0] double 1 run scoreboard players get @a[tag=leaving,limit=1] exit_x
#execute store result entity @s Pos[1] double 1 run scoreboard players get @a[tag=leaving,limit=1] exit_y
#execute store result entity @s Pos[2] double 1 run scoreboard players get @a[tag=leaving,limit=1] exit_z
##execute in minecraft:overworld run teleport @s ~ ~ ~
##teleport @s @s
teleport @a[tag=leaving,limit=1] @s
#execute as @a[tag=leaving,limit=1] at @s run teleport @s ~0.5 ~0.5 ~0.5
tellraw @a ["x: ", {"nbt": "Pos[0]", "entity": "@s"}]
tellraw @a ["y: ", {"nbt": "Pos[1]", "entity": "@s"}]
tellraw @a ["z: ", {"nbt": "Pos[2]", "entity": "@s"}]
##execute as @a[tag=leaving,limit=1] at @s in minecraft:overworld run teleport @s ~ ~ ~
kill @s

