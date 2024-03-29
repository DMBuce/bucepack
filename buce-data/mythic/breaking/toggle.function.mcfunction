# runs when player uses a breaking tool while sneaking

# revoke advancement(s)
advancement revoke @s only buce:mythic/breaking/axe/trigger_sneaking
advancement revoke @s only buce:mythic/breaking/hoe/trigger_sneaking
advancement revoke @s only buce:mythic/breaking/pick/trigger_sneaking
advancement revoke @s only buce:mythic/breaking/shovel/trigger_sneaking

# turn breaking on or off
scoreboard players set @s var 0
scoreboard players set @s[tag=breaking_enabled] var 1
execute if entity @s[scores={var=0}] run function buce:mythic/breaking/on
execute if entity @s[scores={var=1}] run function buce:mythic/breaking/off

