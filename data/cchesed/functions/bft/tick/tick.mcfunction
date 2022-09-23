# ---------------------------------------------------------------------------- #
#                                     Tick                                     #
# ---------------------------------------------------------------------------- #

execute as @e[tag=cc.ft.llama] at @s if entity @p[distance=..6] run function cchesed:bft/tick/tick_llama

# remove all gui_ghost items
clear @a #cchesed:bft/ghost{cchesed:{bft:{gui_ghost:1b}}}
kill @e[type=item,nbt={Item:{tag:{cchesed:{bft:{gui_ghost:1b}}}}}]


# Rocket
execute as @e[type=minecraft:firework_rocket,tag=!cc.ft.processed_rocket] run function cchesed:bft/items/rocket/process
execute as @e[tag=cc.ft.rocket_marker] unless predicate cchesed:bft/rocket_marker at @s run function cchesed:bft/items/rocket/explode

# Process Tipped Arrows
execute as @e[type=arrow,tag=!cc.ft.proccesed_arrow] run function cchesed:bft/items/process_arrow