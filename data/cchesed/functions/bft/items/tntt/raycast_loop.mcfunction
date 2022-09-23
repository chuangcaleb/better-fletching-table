# Increment counter 
scoreboard players add @s cc.ft.raycast_counter 1

# If still within limit, and current block is transparent, raycast forward
execute if score @s cc.ft.raycast_counter matches ..25 if block ~ ~ ~ #cchesed:bft/transparent positioned ^ ^ ^0.2 run function cchesed:bft/items/tntt/raycast_loop

# If found block, run function
execute if block ~ ~ ~ minecraft:target align xyz positioned ~0.5 ~ ~0.5 run function cchesed:bft/items/tntt/upgrade

# execute if score @s cc.ft.raycast_counter matches 26 run give @s minecraft:target{Enchantments:[{}],id:"minecraft:target", Count:1b, tag:{display:{Name:'{"text":"TNT Target","color":"yellow","italic":false}'},Enchantments:[{}], cchesed:{bft:{tnt_target:1b}}}}
