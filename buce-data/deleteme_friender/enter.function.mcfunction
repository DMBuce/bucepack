# runs as a player that used an enderpearl on an enderchest

# revoke advancement
advancement revoke @s only buce:friender/enter

# store exit location
execute store result score @s exit_x run data get entity @s Pos[0] 1
execute store result score @s exit_y run data get entity @s Pos[1] 1
execute store result score @s exit_z run data get entity @s Pos[2] 1

# try to remove pearl from inventory
execute store result score @s var run clear @s minecraft:ender_pearl 1

# enter frienderchest if we did
execute if score @s var matches 1.. in buce:friender/chest positioned 2 0 2 run teleport @s ~ ~ ~

