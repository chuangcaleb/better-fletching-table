advancement revoke @s only cchesed:bft/utility/place_tnt_target

# Run raycast
scoreboard players set @s cc.ft.raycast_counter 0
execute unless predicate cchesed:bft/is_sneaking anchored eyes positioned ^ ^ ^0.5 run function cchesed:bft/items/tntt/block/raycast_loop

execute if entity @s[tag=!cc.ft.placed_tntt] run give @s minecraft:gunpowder 4

tag @s remove cc.ft.placed_tntt