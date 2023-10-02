# runs on server load

# add objectives
scoreboard objectives add died deathCount

# set gamerule, but only once
execute unless score #buce.snow var matches 1.. run gamerule snowAccumulationHeight 2
scoreboard players set #buce.snow var 1

