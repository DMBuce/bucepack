# runs as a horse that was fed an enchanted golden apple

# max out speed
#data modify entity @s Attributes[1].Base set value 0.3375
attribute @s generic.movement_speed base set 0.3375
# max out jump
#data modify entity @s Attributes[2].Base set value 1.0
attribute @s generic.jump_strength base set 1.0
# max out health
#data modify entity @s Attributes[3].Base set value 60.0
attribute @s generic.max_health base set 60.0
data modify entity @s Health set value 60.0
#TODO: use instant health effect instead

# give permanent glowing
effect give @s glowing 1000000 0 true

# clean up
tag @s remove clicked

