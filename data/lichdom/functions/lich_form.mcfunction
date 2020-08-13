# runs as a player that killed a villager or illager

# clear previous form
execute as @s[team=!lich] run function lichdom:reset_form

# add player to lich team
team join lich @s[team=!lich,advancements={lichdom:become_lich=true}]

