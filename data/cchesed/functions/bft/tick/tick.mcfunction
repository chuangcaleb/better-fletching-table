# ---------------------------------------------------------------------------- #
#                                     Tick                                     #
# ---------------------------------------------------------------------------- #

# Entity tick events
execute as @e[tag=cc.ft.tick] run function cchesed:bft/tick/tick_entity

# remove all gui_ghost items
clear @a #cchesed:bft/ghost{cchesed:{bft:{gui_ghost:1b}}}
kill @e[type=item,nbt={Item:{tag:{cchesed:{bft:{gui_ghost:1b}}}}}]

# Rocket
execute as @e[type=minecraft:firework_rocket,tag=!cc.ft.processed_rocket] run function cchesed:bft/items/rocket/process

# Process (Tipped + Spectral) Arrows
execute as @e[type=#cchesed:bft/all_arrows,tag=!cc.ft.proccesed_arrow] at @s run function cchesed:bft/items/process_arrow
