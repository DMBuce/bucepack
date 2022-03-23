# runs as aec chopper

# die if this block is unmineable
execute unless block ~ ~1 ~ #mineable/axe run kill @s

# break block
setblock ~ ~1 ~ air destroy

# teleport up 1 block
teleport @s ~ ~1 ~

