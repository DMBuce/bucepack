# runs every tick

# process scoreboards
execute as @a at @s store result score @s blocks_above if blocks ~ ~1 ~ ~ 255 ~ ~ ~1 ~ masked
execute store result score @a daytime run time query daytime

# craft phylactery
execute as @e[type=item,nbt={Item:{id:"minecraft:trident",tag:{Enchantments:[{id:"minecraft:loyalty",lvl:3s}]}}}] at @s if block ~ ~ ~ minecraft:cauldron if entity @e[distance=0..1,type=item,nbt={Item:{id:"minecraft:totem_of_undying"}}] if entity @e[distance=0..1,type=item,nbt={Item:{id:"minecraft:sponge"}}] run function lichdom:craft_phylactery

# craft pedestal
execute in minecraft:overworld as @e[distance=0..,type=item,nbt={Item:{id:"minecraft:totem_of_undying",tag:{Enchantments:[{id:"minecraft:loyalty",lvl:3s}]}}},nbt=!{Item:{tag:{phylactery:true}}}] at @s if block ~ ~-1 ~ minecraft:dragon_head if block ~ ~-2 ~ minecraft:beacon run function lichdom:craft_pedestal
execute in minecraft:overworld as @e[distance=0..,type=item,nbt={Item:{id:"minecraft:totem_of_undying",tag:{Enchantments:[{id:"minecraft:loyalty",lvl:3s}]}}},nbt=!{Item:{tag:{phylactery:true}}}] at @s if block ~ ~-1 ~ minecraft:dragon_wall_head if block ~ ~-2 ~ minecraft:beacon run function lichdom:craft_pedestal

# respawn liches
execute as @e[type=item,nbt={Item:{tag:{phylactery:true}}}] at @s as @a[distance=0..1.5,advancements={lichdom:become_lich=true},gamemode=spectator] rotated as @s run function lichdom:pedestal_respawn

# process liches and lich forms
execute as @a[gamemode=!spectator,gamemode=!creative,team=lich] at @s run function lichdom:tick_lich
execute as @a[gamemode=!spectator,gamemode=!creative,team=vampire] at @s run function lichdom:tick_vampire
execute as @a[gamemode=!spectator,gamemode=!creative,team=bunny] at @s run function lichdom:tick_bunny
execute as @a[gamemode=!spectator,gamemode=!creative,team=turtle] at @s run function lichdom:tick_turtle

# process creatures
execute as @e[team=vampire,type=minecraft:bat] at @s run function lichdom:tick_bat
execute as @e[team=rabidbunny,type=minecraft:rabbit] at @s run function lichdom:tick_rabbit

