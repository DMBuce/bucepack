# runs as a player who took a new form

# spooky sound and particles
execute as @e[scores={respawning=0}] run playsound minecraft:entity.zombie_villager.converted ambient @a[distance=0..16] ^ ^1.5 ^1.5
execute as @e[scores={respawning=0}] run particle minecraft:soul ^ ^1.5 ^1.5 0.1 0.1 0.1 0.01 3

# remove wings/fur/shell
clear @s[team=vampire] minecraft:elytra{Enchantments:[{id:"minecraft:mending",lvl:1s},{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}],display:{Name:'{"text":"Leathery Wings"}'}}
clear @s[team=bunny] minecraft:leather_chestplate{Unbreakable:1,Enchantments:[{id:"minecraft:unbreaking",lvl:10s},{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}],display:{Name:'{"text":"Fur"}'}}
clear @s[team=turtle] minecraft:turtle_helmet{Enchantments:[{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}]}

# remove vampire night vision, regen
effect clear @s[team=vampire] minecraft:night_vision
#effect clear @s[team=vampire] minecraft:strength
effect clear @s[team=vampire] minecraft:regeneration

# remove werebunny strength, jump boost
effect clear @s[team=bunny] minecraft:strength
#effect clear @s[team=bunny] minecraft:regeneration
effect clear @s[team=bunny] minecraft:jump_boost

# remove slowness, resistance
effect clear @s[team=turtle] minecraft:slowness
effect clear @s[team=turtle] minecraft:resistance
effect clear @s[team=turtle] minecraft:dolphins_grace

# remove advancements
advancement revoke @s[advancements={lichdom:lich_form=true}] only lichdom:lich_form
advancement revoke @s[advancements={lichdom:vampire_form=true}] only lichdom:vampire_form
advancement revoke @s[advancements={lichdom:bunny_form=true}] only lichdom:bunny_form
advancement revoke @s[advancements={lichdom:turtle_form=true}] only lichdom:turtle_form

