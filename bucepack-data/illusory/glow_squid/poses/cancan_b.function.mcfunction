# switches armor stand pose from cancan_a to cancan_b

## debug
# say cancan_b

# set pose
data modify entity @s Pose set value {Body:[0f,-20f,0f],Head:[-10f,-20f,0f],LeftArm:[0f,0f,-110f],LeftLeg:[0f,0f,15f],RightArm:[8f,90f,110f],RightLeg:[-120f,-40f,0f]}

# set tags
tag @s add posed
tag @s add cancan_b
tag @s remove cancan_a

