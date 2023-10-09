# runs as aec chopper

# die if this block is unmineable
execute unless block ~ ~1 ~ #mineable/axe run kill @s

# visual and sound effects
execute if block ~ ~1 ~ #mineable/axe run particle minecraft:instant_effect ~ ~ ~ 0.1 0.1 0.1 0.03 8
#execute if block ~ ~1 ~ #mineable/axe run playsound minecraft:entity.silverfish.ambient player @a ~ ~ ~

# break block
execute if block ~ ~1 ~ #mineable/axe run setblock ~ ~1 ~ air destroy

# teleport up 1 block
teleport @s ~ ~1 ~

