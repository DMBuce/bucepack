# runs when a player dies

# revoke advancement
advancement revoke @s only bucepack:lose_hp_xp/die

# reset score
scoreboard players set @s died 0

# reset xp if keepInventory is enabled
execute if score #buce.keepinv var matches 1.. run xp set @s 0 levels
execute if score #buce.keepinv var matches 1.. run xp set @s 0 points

