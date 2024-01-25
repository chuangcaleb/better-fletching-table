# ---------------------------------------------------------------------------- #
#                                     Tick                                     #
# ---------------------------------------------------------------------------- #

# Entity tick events
execute as @e run function cchesed:bft/tick/tick_entity

# remove all gui_ghost items
clear @a #cchesed:bft/ghost{cchesed: {bft: {gui_ghost: 1b}}}
# kill @e moved to ./tick_entity.mcfunction
