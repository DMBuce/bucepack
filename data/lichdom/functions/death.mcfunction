# runs as a player who died

execute as @s[team=turtle,scores={shell_broke=1}] run tellraw @a [{"selector":"@s"},{"text":" lost their shell"}]
execute as @s[team=turtle,scores={shell_broke=1}] run gamerule showDeathMessages true
scoreboard players set @s[team=turtle,scores={shell_broke=1}] shell_broke 0

