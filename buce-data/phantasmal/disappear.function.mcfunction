# runs when an invisible phantom hits a player

# revoke advancement
advancement revoke @s only buce:phantasmal/disappear

# make phantom "disappear"
#kill @e[type=phantom,distance=..8,limit=1,sort=nearest]
execute on attacker run kill @s

