# runs when a player kills a warden

# set gamerules, but only once
execute unless score #buce.anger var matches 1.. run gamerule forgiveDeadPlayers false
execute unless score #buce.anger var matches 1.. run gamerule universalAnger true
scoreboard players set #buce.anger var 1

