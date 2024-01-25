execute as @s[tag=cc.ft.tick] run function cchesed:bft/tick/tick_entity_tagged

# remove all gui_ghost items
kill @s[type=item,nbt={Item: {tag: {cchesed: {bft: {gui_ghost: 1b}}}}}]

# Rocket
execute as @s[type=minecraft:firework_rocket,tag=!cc.ft.processed_rocket] run function cchesed:bft/items/rocket/process

# Process (Tipped + Spectral) Arrows
execute as @s[type=#cchesed:bft/all_arrows,tag=!cc.ft.proccesed_arrow] at @s run function cchesed:bft/items/process_arrow
