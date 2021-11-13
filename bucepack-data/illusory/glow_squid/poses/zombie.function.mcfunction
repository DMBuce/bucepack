# switches armor stand pose from riposte to zombie

# debug
say zombie

# set pose
data modify entity @s Pose set value {Body:[0f,0f,0f],Head:[-10f,0f,-5f],LeftArm:[-105f,0f,0f],LeftLeg:[7f,0f,0f],RightArm:[-100f,0f,0f],RightLeg:[-45f,0f,0f]}

# set tags
tag @s add posed
tag @s add zombie
tag @s remove riposte

