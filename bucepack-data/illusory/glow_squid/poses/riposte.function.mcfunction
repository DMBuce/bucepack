# switches armor stand pose from hero to riposte

# debug
say riposte

# set pose
data modify entity @s Pose set value {Body:[0f,0f,0f],Head:[15f,20f,0f],LeftArm:[4f,8f,235f],LeftLeg:[-15f,-20f,-15f],RightArm:[245f,0f,90f],RightLeg:[8f,20f,4f]}

# set tags
tag @s add posed
tag @s add riposte
tag @s remove hero

