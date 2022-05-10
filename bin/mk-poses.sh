#!/bin/bash

while read from to nbt; do
echo "# switches armor stand pose from $from to $to

## debug
# say $to

# set pose
data modify entity @s Pose set value {$nbt}

# set tags
tag @s add posed
tag @s add $to
tag @s remove $from
" > "./buce-data/illusory/glow_squid/poses/$to.function.mcfunction"
done <<- EOF
default no        Body:[0f,0f,0f],Head:[0f,0f,0f],LeftArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightArm:[0f,0f,0f],RightLeg:[0f,0f,0f]
no solemn         Body:[0f,0f,2f],Head:[15f,0f,0f],LeftArm:[-30f,15f,15f],LeftLeg:[-1f,0f,-1f],RightArm:[-60f,-20f,-10f],RightLeg:[1f,0f,1f]
solemn athena     Body:[0f,0f,2f],Head:[-5f,0f,0f],LeftArm:[10f,0f,-5f],LeftLeg:[-3f,-3f,-3f],RightArm:[-60f,20f,-10f],RightLeg:[3f,3f,3f]
athena brandish   Body:[0f,0f,-2f],Head:[-15f,0f,0f],LeftArm:[20f,0f,-10f],LeftLeg:[5f,-3f,-3f],RightArm:[-110f,50f,0f],RightLeg:[-5f,3f,3f]
brandish honor    Body:[0f,0f,0f],Head:[-15f,0f,0f],LeftArm:[-110f,35f,0f],LeftLeg:[5f,-3f,-3f],RightArm:[-110f,-35f,0f],RightLeg:[-5f,3f,3f]
honor entertain   Body:[0f,0f,0f],Head:[-15f,0f,0f],LeftArm:[-110f,-35f,0f],LeftLeg:[5f,-3f,-3f],RightArm:[-110f,35f,0f],RightLeg:[-5f,3f,3f]
entertain salute  Body:[0f,0f,0f],Head:[0f,0f,0f],LeftArm:[10f,0f,-5f],LeftLeg:[-1f,0f,-1f],RightArm:[-70f,-40f,0f],RightLeg:[1f,0f,1f]
salute hero       Body:[0f,8f,0f],Head:[-4f,65f,0f],LeftArm:[15f,30f,-8f],LeftLeg:[0f,-75f,-8f],RightArm:[-100f,65f,0f],RightLeg:[4f,65f,8f]
hero riposte      Body:[0f,0f,0f],Head:[15f,20f,0f],LeftArm:[4f,8f,235f],LeftLeg:[-15f,-20f,-15f],RightArm:[245f,0f,90f],RightLeg:[8f,20f,4f]
riposte zombie    Body:[0f,0f,0f],Head:[-10f,0f,-5f],LeftArm:[-105f,0f,0f],LeftLeg:[7f,0f,0f],RightArm:[-100f,0f,0f],RightLeg:[-45f,0f,0f]
zombie cancan_a   Body:[0f,20f,0f],Head:[-5f,20f,0f],LeftArm:[8f,0f,-115f],LeftLeg:[-110f,55f,0f],RightArm:[0f,85f,110f],RightLeg:[0f,25f,-15f]
cancan_a cancan_b Body:[0f,-20f,0f],Head:[-10f,-20f,0f],LeftArm:[0f,0f,-110f],LeftLeg:[0f,0f,15f],RightArm:[8f,90f,110f],RightLeg:[-120f,-40f,0f]
cancan_b default  
EOF

