# runs when a player has a quicksilver sword in their off hand

# revoke advancement
advancement revoke @s only bucepack:mythic/quicksilver/shield/trigger

# replace sword with shield
item replace entity @s weapon.offhand with shield{relic:1b,quicksilver:1b,CustomModelData:22183,display:{Name:"{\"text\":\"Relic of Quicksilver\",\"color\":\"light_purple\"}",Lore:["\"§r§bMyth of Liquid Metal\""]},Enchantments:[{id:unbreaking,lvl:3}],BlockEntityTag:{Base:7,Patterns:[{Pattern:dls,Color:0},{Pattern:gra,Color:8},{Pattern:gra,Color:8},{Pattern:gra,Color:8}]}}

# sound effect
playsound minecraft:block.enchantment_table.use player @a

