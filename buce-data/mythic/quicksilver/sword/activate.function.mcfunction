# runs when a player has a quicksilver shield in their main hand

# revoke advancement
advancement revoke @s only buce:mythic/quicksilver/sword/trigger

# replace shield with sword
item replace entity @s weapon.mainhand with iron_sword{relic:1b,quicksilver:1b,CustomModelData:22183,display:{Name:"{\"text\":\"Relic of Quicksilver\",\"color\":\"light_purple\"}",Lore:["\"§r§bMyth of Liquid Metal\""]},Enchantments:[{id:sharpness,lvl:5}]}

# sound effect
playsound minecraft:block.enchantment_table.use player @a

