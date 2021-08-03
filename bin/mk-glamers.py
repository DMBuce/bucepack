#!/usr/bin/python

template="""\
      - { type: item, weight: 1,  count: 1, item: glow_ink_sac,
          nbt: '{CustomModelData:%s,EntityTag:{ShowArms:1b,NoBasePlate:1b%s,Pose:{%s}},display:{Lore:[\\"\\\\\\"§r§a%s\\\\\\"\\"%s]}}'
        }\
"""

sizes = [
    { 'nbt': '', 'lore': '' },
    { 'nbt': ',Small:1b', 'lore': ',\\"\\\\\\"§r§aGlamer of Shrinking\\\\\\"\\"' },
]
poses = [
{'name': 'Glamer of the Default Pose', 'nbt': '' }, #'Body:[0f,0f,0f],Head:[0f,0f,0f],LeftArm:[-10f,0f,-10f],LeftLeg:[-1f,0f,-1f],RightArm:[-15f,0f,10f],RightLeg:[1f,0f,1f]'},
{'name': 'Glamer of No Pose', 'nbt': 'Body:[0f,0f,0f],Head:[0f,0f,0f],LeftArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightArm:[0f,0f,0f],RightLeg:[0f,0f,0f]'},
{'name': 'Glamer of the Solemn', 'nbt': 'Body:[0f,0f,2f],Head:[15f,0f,0f],LeftArm:[-30f,15f,15f],LeftLeg:[-1f,0f,-1f],RightArm:[-60f,-20f,-10f],RightLeg:[1f,0f,1f]'},
{'name': 'Glamer of the Gesture', 'nbt': 'Body:[0f,0f,2f],Head:[-5f,0f,0f],LeftArm:[10f,0f,-5f],LeftLeg:[-3f,-3f,-3f],RightArm:[-60f,20f,-10f],RightLeg:[3f,3f,3f]'},
{'name': 'Glamer of Brandishing', 'nbt': 'Body:[0f,0f,-2f],Head:[-15f,0f,0f],LeftArm:[20f,0f,-10f],LeftLeg:[5f,-3f,-3f],RightArm:[-110f,50f,0f],RightLeg:[-5f,3f,3f]'},
{'name': 'Glamer of Honor', 'nbt': 'Body:[0f,0f,0f],Head:[-15f,0f,0f],LeftArm:[-110f,35f,0f],LeftLeg:[5f,-3f,-3f],RightArm:[-110f,-35f,0f],RightLeg:[-5f,3f,3f]'},
{'name': 'Glamer of Entertaining', 'nbt': 'Body:[0f,0f,0f],Head:[-15f,0f,0f],LeftArm:[-110f,-35f,0f],LeftLeg:[5f,-3f,-3f],RightArm:[-110f,35f,0f],RightLeg:[-5f,3f,3f]'},
{'name': 'Glamer of the Salute', 'nbt': 'Body:[0f,0f,0f],Head:[0f,0f,0f],LeftArm:[10f,0f,-5f],LeftLeg:[-1f,0f,-1f],RightArm:[-70f,-40f,0f],RightLeg:[1f,0f,1f]'},
{'name': 'Glamer of the Hero', 'nbt': 'Body:[0f,8f,0f],Head:[-4f,65f,0f],LeftArm:[15f,30f,-8f],LeftLeg:[0f,-75f,-8f],RightArm:[-100f,65f,0f],RightLeg:[4f,65f,8f]'},
{'name': 'Glamer of Riposte', 'nbt': 'Body:[0f,0f,0f],Head:[15f,20f,0f],LeftArm:[4f,8f,235f],LeftLeg:[-15f,-20f,-15f],RightArm:[245f,0f,90f],RightLeg:[8f,20f,4f]'},
{'name': 'Glamer of the Zombie', 'nbt': 'Body:[0f,0f,0f],Head:[-10f,0f,-5f],LeftArm:[-105f,0f,0f],LeftLeg:[7f,0f,0f],RightArm:[-100f,0f,0f],RightLeg:[-45f,0f,0f]'},
{'name': 'Glamer of the Rightward Cancan', 'nbt': 'Body:[0f,20f,0f],Head:[-5f,20f,0f],LeftArm:[8f,0f,-115f],LeftLeg:[-110f,55f,0f],RightArm:[0f,85f,110f],RightLeg:[0f,25f,-15f]'},
{'name': 'Glamer of the Leftward Cancan', 'nbt': 'Body:[0f,-20f,0f],Head:[-10f,-20f,0f],LeftArm:[0f,0f,-110f],LeftLeg:[0f,0f,15f],RightArm:[8f,90f,110f],RightLeg:[-120f,-40f,0f]'},
]

print("""\
pools:
  - rolls: 1
    entries:\
""")

custommodeldata=22183
for size in sizes:
    for pose in poses:
        print(template % (
            custommodeldata, size['nbt'], pose['nbt'], pose['name'], size['lore']
        ))
        custommodeldata+=1

