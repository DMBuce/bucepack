# switches armor stand pose from salute to hero

# debug
say hero

# set pose
data modify entity @s Pose set value {Body:[0f,8f,0f],Head:[-4f,65f,0f],LeftArm:[15f,30f,-8f],LeftLeg:[0f,-75f,-8f],RightArm:[-100f,65f,0f],RightLeg:[4f,65f,8f]}

# set tags
tag @s add posed
tag @s add hero
tag @s remove salute

