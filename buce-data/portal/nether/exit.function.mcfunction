# runs as a player who left a nether portal

# revoke advancements
advancement revoke @s only buce:portal/nether/exit
advancement revoke @s only buce:portal/nether/enter

## debug
#say left portal

## revoke advancement once player leaves portal
#execute unless block ~ ~ ~ minecraft:nether_portal run advancement revoke @s only buce:portal/nether/overworld

