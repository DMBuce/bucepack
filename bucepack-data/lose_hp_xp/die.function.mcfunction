# runs when a player dies

# revoke advancement
advancement revoke @s only bucepack:lose_hp_xp/die

# reset score
scoreboard players set @s died 0

# reset xp
xp set @s 0 levels
xp set @s 0 points

