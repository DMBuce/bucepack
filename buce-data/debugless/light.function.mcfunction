# runs when a player holds a light block

# revoke advancement
advancement revoke @s only buce:debugless/light

## debug
#say light

execute \
	if predicate buce:debugless/light/level/0 \
	unless predicate buce:debugless/light/state/0 \
	run item modify entity @s weapon.offhand buce:debugless/light/state/0
execute \
	if predicate buce:debugless/light/level/1 \
	unless predicate buce:debugless/light/state/1 \
	run item modify entity @s weapon.offhand buce:debugless/light/state/1
execute \
	if predicate buce:debugless/light/level/2 \
	unless predicate buce:debugless/light/state/2 \
	run item modify entity @s weapon.offhand buce:debugless/light/state/2
execute \
	if predicate buce:debugless/light/level/3 \
	unless predicate buce:debugless/light/state/3 \
	run item modify entity @s weapon.offhand buce:debugless/light/state/3
execute \
	if predicate buce:debugless/light/level/4 \
	unless predicate buce:debugless/light/state/4 \
	run item modify entity @s weapon.offhand buce:debugless/light/state/4
execute \
	if predicate buce:debugless/light/level/5 \
	unless predicate buce:debugless/light/state/5 \
	run item modify entity @s weapon.offhand buce:debugless/light/state/5
execute \
	if predicate buce:debugless/light/level/6 \
	unless predicate buce:debugless/light/state/6 \
	run item modify entity @s weapon.offhand buce:debugless/light/state/6
execute \
	if predicate buce:debugless/light/level/7 \
	unless predicate buce:debugless/light/state/7 \
	run item modify entity @s weapon.offhand buce:debugless/light/state/7
execute \
	if predicate buce:debugless/light/level/8 \
	unless predicate buce:debugless/light/state/8 \
	run item modify entity @s weapon.offhand buce:debugless/light/state/8
execute \
	if predicate buce:debugless/light/level/9 \
	unless predicate buce:debugless/light/state/9 \
	run item modify entity @s weapon.offhand buce:debugless/light/state/9
execute \
	if predicate buce:debugless/light/level/10 \
	unless predicate buce:debugless/light/state/10 \
	run item modify entity @s weapon.offhand buce:debugless/light/state/10
execute \
	if predicate buce:debugless/light/level/11 \
	unless predicate buce:debugless/light/state/11 \
	run item modify entity @s weapon.offhand buce:debugless/light/state/11
execute \
	if predicate buce:debugless/light/level/12 \
	unless predicate buce:debugless/light/state/12 \
	run item modify entity @s weapon.offhand buce:debugless/light/state/12
execute \
	if predicate buce:debugless/light/level/13 \
	unless predicate buce:debugless/light/state/13 \
	run item modify entity @s weapon.offhand buce:debugless/light/state/13
execute \
	if predicate buce:debugless/light/level/14 \
	unless predicate buce:debugless/light/state/14 \
	run item modify entity @s weapon.offhand buce:debugless/light/state/14
execute \
	if predicate buce:debugless/light/level/15 \
	unless predicate buce:debugless/light/state/15 \
	run item modify entity @s weapon.offhand buce:debugless/light/state/15

