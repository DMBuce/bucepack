# switches armor stand pose from zombie to cancan_a

## debug
# say cancan_a

# set pose
data modify entity @s Pose set value {Body:[0f,20f,0f],Head:[-5f,20f,0f],LeftArm:[8f,0f,-115f],LeftLeg:[-110f,55f,0f],RightArm:[0f,85f,110f],RightLeg:[0f,25f,-15f]}

# set tags
tag @s add posed
tag @s add cancan_a
tag @s remove zombie

