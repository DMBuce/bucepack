# runs when a player uses a reverb totem with an empty offhand

# revoke advancement
advancement revoke @s only buce:mythic/reverb/offhand/trigger

# try to remove totem from inventory
execute store result score @s var run clear @s minecraft:totem_of_undying 1

# give new totem if we did
execute if score @s var matches 1.. run item replace entity @s weapon.offhand with minecraft:totem_of_undying{relic:1b,reverb:1b,CustomModelData:22183,display:{Name:"{\"text\":\"Relic of Echoes\",\"color\":\"light_purple\"}",Lore:["\"§r§bMyth of Reverberation\""]},Enchantments:[{id:protection,lvl:4}]}

# give echo shard
loot spawn ~ ~ ~ loot buce:mythic/reverb/reverberate

