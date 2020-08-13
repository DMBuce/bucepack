# runs as a player that killed a turtle

# clear previous form
execute as @s[team=!turtle] run function lichdom:reset_form

# add player to turtle team
team join turtle @s[team=!turtle,advancements={lichdom:become_lich=true}]

# give player advancement
advancement grant @s[advancements={lichdom:become_lich=true,lichdom:become_turtle=false}] only lichdom:become_turtle

# gain shell
#replaceitem entity @s[team=turtle] armor.head minecraft:turtle_helmet{Enchantments:[{id:"minecraft:aqua_affinity",lvl:1s},{id:"minecraft:respiration",lvl:3s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}]}
replaceitem entity @s[team=turtle] armor.head minecraft:turtle_helmet{Enchantments:[{id:"minecraft:aqua_affinity",lvl:1s},{id:"minecraft:respiration",lvl:3s},{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}]}

