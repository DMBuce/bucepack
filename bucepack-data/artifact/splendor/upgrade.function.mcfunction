# runs as a horse that was fed an enchanted golden apple

# max out health
data modify entity @s Attributes[0].Base set value 60.0
# max out speed
data modify entity @s Attributes[1].Base set value 0.3375
# max out jump
data modify entity @s Attributes[2].Base set value 1.0

# give permanent glowering
effect give @s glowing 1000000 0 true

# clean up
tag @s remove clicked

