# * Every tick on the llama

# ------------------------ Intiialize fletching table ------------------------ #

# If crafted was taken, spit it out
execute if score @s cc.ft.output_id matches 0.. unless data entity @s Items[{Slot: 11b}] run function cchesed:bft/craft/_craft

# spit out replaced gui items

execute if data entity @s DecorItem run function cchesed:bft/gui/replace_decor

execute if data entity @s Items[{Slot: 11b}] run function cchesed:bft/gui/has_item_11

# refill slot with the glass pane

execute unless data entity @s Items[{Slot: 5b, tag: {cchesed: {bft: {gui_ghost: 1b}}}}] run function cchesed:bft/gui/has_item_5
execute unless data entity @s Items[{Slot: 6b, tag: {cchesed: {bft: {gui_ghost: 1b}}}}] run function cchesed:bft/gui/has_item_6
execute unless data entity @s Items[{Slot: 10b, tag: {cchesed: {bft: {gui_ghost: 1b}}}}] run function cchesed:bft/gui/has_item_10
execute unless data entity @s Items[{Slot: 15b, tag: {cchesed: {bft: {gui_ghost: 1b}}}}] run function cchesed:bft/gui/has_item_15
execute unless data entity @s Items[{Slot: 16b, tag: {cchesed: {bft: {gui_ghost: 1b}}}}] run function cchesed:bft/gui/has_item_16


# ------------------------------- check recipes ------------------------------ #

# Reset craft result id
scoreboard players set @s cc.ft.output_id -1
function cchesed:bft/craft/recipe/_check_all_recipes

# ------------------------------ block handling ------------------------------ #

# If block is broken or moved
# We run it per llama, this reduces computation calls
execute unless block ~ ~ ~ minecraft:fletching_table as @e[tag=cc.ft.table] at @s unless block ~ ~ ~ minecraft:fletching_table run function cchesed:bft/block/remove