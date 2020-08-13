# runs as a loyalty iii trident item in a cauldron with a sponge and totem of undying

# debug
#say crafting phylactery

# give loyalty iii to totem
execute as @e[distance=0..1,limit=1,type=item,nbt={Item:{id:"minecraft:totem_of_undying"}}] run data merge entity @s {Item:{tag:{Enchantments:[{id:"minecraft:loyalty",lvl:3s}],display:{Name:'{"text":"Phylactery"}'}}}}

# particles
particle minecraft:splash ~ ~ ~ 0.1 0.1 0.1 1 30

# drain cauldron
execute as @s at @s if block ~ ~ ~ minecraft:cauldron[level=1] run setblock ~ ~ ~ minecraft:cauldron[level=0] replace
execute as @s at @s if block ~ ~ ~ minecraft:cauldron[level=2] run setblock ~ ~ ~ minecraft:cauldron[level=1] replace
execute as @s at @s if block ~ ~ ~ minecraft:cauldron[level=3] run setblock ~ ~ ~ minecraft:cauldron[level=2] replace

# replace sponge with wet sponge
execute as @e[distance=0..1,limit=1,type=item,nbt={Item:{id:"minecraft:sponge"}}] at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:wet_sponge",Count:1b}}
kill @e[distance=0..1,limit=1,type=item,nbt={Item:{id:"minecraft:sponge"}}]

## consume trident
#kill @s

# consume loyalty on trident
data remove entity @s Item.tag.Enchantments[{id:"minecraft:loyalty",lvl:3s}]

# give nearby players advancement
advancement grant @a[distance=0..16,advancements={lichdom:craft_phylactery=false}] only lichdom:craft_phylactery

