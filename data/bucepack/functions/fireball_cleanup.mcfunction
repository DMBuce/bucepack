# runs every 5 seconds after someone starts charging a fireball bow

# remove charge_fireball advancement from players that aren't holding a fireball bow
advancement revoke @a[predicate=!bucepack:fireball,advancements={bucepack:artifact_loot/charge_fireball=true}] only bucepack:artifact_loot/charge_fireball

# try to clean up charge_fireball advancement again in 5 seconds if necessary
execute if entity @a[advancements={bucepack:artifact_loot/charge_fireball=true}] run schedule function bucepack:fireball_cleanup 5s replace

