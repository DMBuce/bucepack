# runs as baby horse before and after its stats are set

execute store result score @s var run data get entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base 1000
tellraw @a ["Speed*1000 : ",{"score":{"name":"@s","objective":"var"}}]
execute store result score @s var run data get entity @s Attributes[{Name:"minecraft:horse.jump_strength"}].Base 1000
tellraw @a ["Jump*1000 : ",{"score":{"name":"@s","objective":"var"}}]
execute store result score @s var run data get entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base 1000
tellraw @a ["Health*1000 : ",{"score":{"name":"@s","objective":"var"}}]

