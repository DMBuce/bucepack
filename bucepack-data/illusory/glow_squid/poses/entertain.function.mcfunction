# switches armor stand pose from honor to entertain

## debug
# say entertain

# set pose
data modify entity @s Pose set value {Body:[0f,0f,0f],Head:[-15f,0f,0f],LeftArm:[-110f,-35f,0f],LeftLeg:[5f,-3f,-3f],RightArm:[-110f,35f,0f],RightLeg:[-5f,3f,3f]}

# set tags
tag @s add posed
tag @s add entertain
tag @s remove honor

