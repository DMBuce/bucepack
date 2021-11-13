# switches armor stand pose from default to no

# debug
say no

# set pose
data modify entity @s Pose set value {Body:[0f,0f,0f],Head:[0f,0f,0f],LeftArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightArm:[0f,0f,0f],RightLeg:[0f,0f,0f]}

# set tags
tag @s add posed
tag @s add no
tag @s remove default

