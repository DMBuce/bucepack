# runs when a player toots a horn in an ancient city

## debug
#say gate

# if deep gate is nearby, link goat horn
execute store result score @s var run locate structure minecraft:ancient_city
execute if score @s var matches ..32 if entity @s[predicate=buce:portal/deep/mainhand] run item modify entity @s weapon.mainhand buce:portal/deep/horn
execute if score @s var matches ..32 if entity @s[predicate=!buce:portal/deep/mainhand] run item modify entity @s weapon.offhand buce:portal/deep/horn

# if deep gate is nearby, tp to surface
execute if score @s var matches ..32 run function buce:portal/deep/gate/activate

