# switches armor stand pose from athena to brandish

## debug
# say brandish

# set pose
data modify entity @s Pose set value {Body:[0f,0f,-2f],Head:[-15f,0f,0f],LeftArm:[20f,0f,-10f],LeftLeg:[5f,-3f,-3f],RightArm:[-110f,50f,0f],RightLeg:[-5f,3f,3f]}

# set tags
tag @s add posed
tag @s add brandish
tag @s remove athena

