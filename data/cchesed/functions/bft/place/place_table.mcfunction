advancement revoke @s only cchesed:bft/place_table

# Run raycast
scoreboard players set @s cc.ft.raycast_counter 0
execute anchored eyes positioned ^ ^ ^0.5 run function cchesed:bft/place/raycast_loop