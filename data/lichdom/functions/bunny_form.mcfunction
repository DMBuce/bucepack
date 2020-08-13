# runs as a player that killed a rabbit

# clear previous form
execute as @s[team=!bunny] run function lichdom:reset_form

# add player to bunny team
team join bunny @s[team=!bunny,advancements={lichdom:become_lich=true}]

# give player advancement
advancement grant @s[advancements={lichdom:become_lich=true,lichdom:become_bunny=false}] only lichdom:become_bunny

# grow fur
replaceitem entity @s[team=bunny] armor.chest minecraft:leather_chestplate{Unbreakable:1,Enchantments:[{id:"minecraft:unbreaking",lvl:10s},{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}],display:{Name:'{"text":"Fur"}'}}

