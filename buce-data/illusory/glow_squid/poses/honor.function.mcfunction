# switches armor stand pose from brandish to honor

## debug
# say honor

# set pose
data modify entity @s Pose set value {Body:[0f,0f,0f],Head:[-15f,0f,0f],LeftArm:[-110f,35f,0f],LeftLeg:[5f,-3f,-3f],RightArm:[-110f,-35f,0f],RightLeg:[-5f,3f,3f]}

# set tags
tag @s add posed
tag @s add honor
tag @s remove brandish

