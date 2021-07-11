# runs while a player charges stormcalling

# increment storm_charge
scoreboard players add @s storm_charge 1

# start storm if charge exceeds threshold
execute if entity @s[scores={storm_charge=60..}] run function bucepack:artifact/stormcalling/activate

# debug
#tellraw @s ["Storm charge: ",{"score":{"name":"*","objective":"storm_charge"}}]

# reset charge 4t i.e. 0.2s from the last time this function is called
schedule function bucepack:artifact/stormcalling/reset 4t replace

