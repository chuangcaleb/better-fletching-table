# Increment counter 
scoreboard players add @s cc.ft.raycast_counter 1

# If still within limit, and current block is transparent, raycast forward
execute if score @s cc.ft.raycast_counter matches ..25 if block ~ ~ ~ #cchesed:bft/transparent positioned ^ ^ ^0.2 run function cchesed:bft/block/raycast_loop

# If found block, run function
execute if block ~ ~ ~ minecraft:fletching_table align xyz positioned ~0.5 ~ ~0.5 run function cchesed:bft/block/upgrade