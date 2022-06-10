# runs when a player enters the nether

# set gamerule, but only once
execute unless score #buce.natregen var matches 1.. run gamerule naturalRegeneration false
scoreboard players set #buce.natregen var 1

