# runs while a player charges stormcalling

# increment storm_charge
scoreboard players add @s storm_charge 1

# start storm if charge exceeds threshold
execute if entity @s[scores={storm_charge=60..}] run function bucepack:call_storm

# debug
#tellraw @s ["Storm charge: ",{"score":{"name":"*","objective":"storm_charge"}}]

# reset charge 4t i.e. 0.2s from the last time this function is called
schedule function bucepack:reset_storm_charge 4t replace

