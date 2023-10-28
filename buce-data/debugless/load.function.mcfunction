# runs on server load

# set gamerule, but only once
execute unless score #buce.debuginfo var matches 1.. run gamerule reducedDebugInfo true
scoreboard players set #buce.debuginfo var 1

