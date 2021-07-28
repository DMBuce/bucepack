# runs on server load

# add objectives
scoreboard objectives add var dummy
#scoreboard objectives add const dummy

# set gamerule, but only once
execute unless score #buce.insomnia var matches 1.. run gamerule doInsomnia false
scoreboard players set #buce.insomnia var 1

