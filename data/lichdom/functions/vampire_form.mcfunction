# runs as a player that killed a bat

# clear previous form
execute as @s[team=!vampire] run function lichdom:reset_form

# add player to vampire team
team join vampire @s[team=!vampire,advancements={lichdom:become_lich=true}]

# give player advancement
advancement grant @s[advancements={lichdom:become_lich=true,lichdom:become_vampire=false}] only lichdom:become_vampire

# sprout wings
replaceitem entity @s[team=vampire] armor.chest minecraft:elytra{Enchantments:[{id:"minecraft:mending",lvl:1s},{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}],display:{Name:'{"text":"Leathery Wings"}'}}

