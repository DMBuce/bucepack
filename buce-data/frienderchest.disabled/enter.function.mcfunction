# runs as a player that used an enderpearl on an enderchest

# revoke advancement
advancement revoke @s only buce:frienderchest/enter

# try to remove pearl from inventory
execute store result score @s var run clear @s minecraft:ender_pearl 1

# enter frienderchestchest if we did
execute if score @s var matches 1.. in minecraft:the_end positioned 29977810 1 29977810 run teleport @s ~ ~ ~

