# runs when a player channels lightning on a creeper

# set gamerule, but only once
execute unless score #buce.explosion var matches 1.. run gamerule mobExplosionDropDecay false
scoreboard players set #buce.explosion var 1

