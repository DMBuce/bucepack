# switches armor stand pose from no to solemn

# debug
say solemn

# set pose
data modify entity @s Pose set value {Body:[0f,0f,2f],Head:[15f,0f,0f],LeftArm:[-30f,15f,15f],LeftLeg:[-1f,0f,-1f],RightArm:[-60f,-20f,-10f],RightLeg:[1f,0f,1f]}

# set tags
tag @s add posed
tag @s add solemn
tag @s remove no

