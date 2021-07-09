# runs when a player loses night vision

# reapply night vision on players with darkvision
effect give @s[predicate=bucepack:darkvision] night_vision 600 0 1

# revoke tracking advancements from players without darkvision
advancement revoke @s[predicate=!bucepack:darkvision] bucepack:mythic_loot/has_night_vision
advancement revoke @s[predicate=!bucepack:darkvision] bucepack:mythic_loot/lose_night_vision

