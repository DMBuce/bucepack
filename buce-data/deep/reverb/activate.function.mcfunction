# runs when a player uses a reverb totem

# revoke advancement
advancement revoke @s only buce:deep/reverb/trigger

# debug
say activate

# try to remove totem from inventory
execute store result score @s var run clear @s minecraft:totem_of_undying 1

# give new totem if we did
execute if score @s var matches 1.. if entity @s[predicate=buce:deep/reverb/offhand,predicate=!buce:deep/reverb/mainhand] run item replace entity @s weapon.offhand with minecraft:totem_of_undying{relic:1b,reverb:1b,CustomModelData:22183,display:{Name:"{\"text\":\"Relic of Echoes\",\"color\":\"light_purple\"}",Lore:["\"§r§bMyth of Reverberation\""]},Enchantments:[{}]}
execute if score @s var matches 1.. if entity @s[predicate=buce:deep/reverb/mainhand] run item replace entity @s weapon.mainhand with minecraft:totem_of_undying{relic:1b,reverb:1b,CustomModelData:22183,display:{Name:"{\"text\":\"Relic of Echoes\",\"color\":\"light_purple\"}",Lore:["\"§r§bMyth of Reverberation\""]},Enchantments:[{}]}

# give echo shard
loot spawn ~ ~ ~ loot buce:deep/reverb/reverberate

