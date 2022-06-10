# runs when a player kills a wither

# set gamerule, but only once
execute unless score #buce.randtick var matches 1.. run gamerule randomTickSpeed 30
scoreboard players set #buce.randtick var 1

