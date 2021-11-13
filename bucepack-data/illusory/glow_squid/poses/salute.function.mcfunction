# switches armor stand pose from entertain to salute

# debug
say salute

# set pose
data modify entity @s Pose set value {Body:[0f,0f,0f],Head:[0f,0f,0f],LeftArm:[10f,0f,-5f],LeftLeg:[-1f,0f,-1f],RightArm:[-70f,-40f,0f],RightLeg:[1f,0f,1f]}

# set tags
tag @s add posed
tag @s add salute
tag @s remove entertain

