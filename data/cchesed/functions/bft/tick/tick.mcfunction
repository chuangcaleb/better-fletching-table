# ----------------------------------- Tick ----------------------------------- #

execute as @e[tag=cc.ft.llama] at @s run function cchesed:bft/tick/tick_llama

# remove all gui_ghost items
clear @a #cchesed:bft/ghost{cchesed:{bft:{gui_ghost:1b}}}
kill @e[type=item,nbt={Item:{tag:{cchesed:{bft:{gui_ghost:1b}}}}}]
