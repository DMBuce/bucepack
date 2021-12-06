# switches armor stand pose from solemn to athena

## debug
# say athena

# set pose
data modify entity @s Pose set value {Body:[0f,0f,2f],Head:[-5f,0f,0f],LeftArm:[10f,0f,-5f],LeftLeg:[-3f,-3f,-3f],RightArm:[-60f,20f,-10f],RightLeg:[3f,3f,3f]}

# set tags
tag @s add posed
tag @s add athena
tag @s remove solemn

