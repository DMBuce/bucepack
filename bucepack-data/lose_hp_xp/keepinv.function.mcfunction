# runs when a player kills a boss

# set gamerule, but only once
execute unless score #buce.keepinv var matches 1.. run gamerule keepInventory true
scoreboard players set #buce.keepinv var 1

