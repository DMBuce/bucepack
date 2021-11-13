# switches armor stand pose from cancan_b to default

# debug
say default

# set pose
data modify entity @s Pose set value {}

# set tags
tag @s add posed
tag @s add default
tag @s remove cancan_b

