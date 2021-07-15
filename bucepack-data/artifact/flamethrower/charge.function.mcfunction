# runs while a player charges flamethrower

# increment flame_charge
scoreboard players add @s flame_charge 1

# summon flames if charge exceeds threshold
execute if entity @s[scores={flame_charge=20..}] run function bucepack:artifact/flamethrower/activate

## debug
#tellraw @s ["Flamethrower charge: ",{"score":{"name":"*","objective":"flame_charge"}}]

# reset charge 4t i.e. 0.2s from the last time this function is called
schedule function bucepack:artifact/flamethrower/reset 4t replace

# revoke advancement
advancement revoke @s only bucepack:artifact/flamethrower/trigger

