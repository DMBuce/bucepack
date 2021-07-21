# runs on server load

# add objectives
#scoreboard objectives add var dummy
scoreboard objectives add const dummy
scoreboard objectives add died deathCount

# set gamerules
execute unless score #buce.gamerules.set const matches 1.. run gamerule keepInventory true
execute unless score #buce.gamerules.set const matches 1.. run gamerule naturalRegeneration false
scoreboard players set #buce.gamerules.set const 1

## reset objectives
#scoreboard players set * search_charge 0

