# runs when a player kills a wither

# set gamerule, but only once
execute unless score #buce.randtick var matches 1.. run function buce:global_effects/randtick_increase
execute unless score #buce.randtick var matches 1.. run scoreboard players set #buce.randtick var 1

