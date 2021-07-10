# runs when a player shoots a fireball bow

# summon fireball on top of arrow
execute at @e[type=arrow,distance=..2,sort=nearest] run summon minecraft:fireball ~ ~ ~

# revoke advancements
advancement revoke @s only bucepack:artifact_loot/charge_fireball
advancement revoke @s only bucepack:artifact_loot/fireball

