# runs as lich from the position of a nearby phylactery

# debug
#say respawning lich: @s

# put in lich form
scoreboard players set @s respawning 1
function lichdom:lich_form
scoreboard players set @s respawning 0

# visual and sound effects
particle minecraft:totem_of_undying ~ ~0.5 ~ 0.1 0.1 0.1 1 200
playsound minecraft:item.totem.use player @s

# potion effects
effect give @s minecraft:instant_damage 1 1 true
effect give @s minecraft:hunger 5 100 true

# teleport nearby lich ghosts to pedestal, and put them in survival mode
teleport @s ~ ~ ~ ~180 ~
gamemode survival @s

