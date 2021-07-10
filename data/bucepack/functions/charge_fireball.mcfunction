# runs when a player starts charging a fireball bow

# set shot_fireball to 0
scoreboard players set @s shot_fireball 0

# try to clean up charge_fireball advancement every 5 seconds
schedule function bucepack:fireball_cleanup 5s replace

