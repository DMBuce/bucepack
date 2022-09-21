# runs when a player summons a storm

# disable storm charge for a bit
scoreboard players set @s storm_charge -30

# figure out whether to summon rain or thunder
scoreboard players set #buce.thunder var 0
execute if predicate buce:mythic/stormcalling/thunder_chance run scoreboard players set #buce.thunder var 1

# change weather
execute if score #buce.thunder var matches 0 run weather rain 0
execute if score #buce.thunder var matches 1 run weather thunder 0

# sound effect
execute if score #buce.thunder var matches 1 run playsound minecraft:entity.lightning_bolt.thunder player @a

