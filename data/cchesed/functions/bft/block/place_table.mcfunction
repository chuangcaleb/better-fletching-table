advancement revoke @s only cchesed:bft/place_table

# Run raycast
scoreboard players set @s cc.ft.raycast_counter 0
execute unless predicate cchesed:bft/is_sneaking anchored eyes positioned ^ ^ ^0.5 run function cchesed:bft/block/raycast_loop