# * Every tick on the llama

# ------------------------ Intiialize fletching table ------------------------ #

# If crafted was taken, spit it out
execute if score @s cc.ft.craft_result matches 1.. unless data entity @s Items[{Slot:11b}] run function cchesed:bft/craft/_craft

# spit out replaced gui items
execute unless data entity @s Items[{Slot:5b,tag:{cchesed:{bft:{gui_ghost:1b}}}}] if data entity @s Items[{Slot:5b}] run function cchesed:bft/gui/replace_5
execute unless data entity @s Items[{Slot:6b,tag:{cchesed:{bft:{gui_ghost:1b}}}}] if data entity @s Items[{Slot:6b}] run function cchesed:bft/gui/replace_6
execute unless data entity @s Items[{Slot:10b,tag:{cchesed:{bft:{gui_ghost:1b}}}}] if data entity @s Items[{Slot:10b}] run function cchesed:bft/gui/replace_10
execute unless data entity @s Items[{Slot:11b,tag:{cchesed:{bft:{gui_ghost:1b}}}}] if data entity @s Items[{Slot:11b}] run function cchesed:bft/gui/replace_11
execute unless data entity @s Items[{Slot:15b,tag:{cchesed:{bft:{gui_ghost:1b}}}}] if data entity @s Items[{Slot:15b}] run function cchesed:bft/gui/replace_15
execute unless data entity @s Items[{Slot:16b,tag:{cchesed:{bft:{gui_ghost:1b}}}}] if data entity @s Items[{Slot:16b}] run function cchesed:bft/gui/replace_16

# refill slot wit the glass pane
item replace entity @s horse.3 with light_gray_stained_glass_pane{display:{Name:'{"text":""}'},cchesed:{bft:{gui_ghost:1b}}}
item replace entity @s horse.4 with light_gray_stained_glass_pane{display:{Name:'{"text":""}'},cchesed:{bft:{gui_ghost:1b}}}
item replace entity @s horse.8 with light_gray_stained_glass_pane{display:{Name:'{"text":"→"}'},cchesed:{bft:{gui_ghost:1b}}}
item replace entity @s horse.13 with light_gray_stained_glass_pane{display:{Name:'{"text":""}'},cchesed:{bft:{gui_ghost:1b}}}
item replace entity @s horse.14 with light_gray_stained_glass_pane{display:{Name:'{"text":""}'},cchesed:{bft:{gui_ghost:1b}}}

# remove old output, if any
item replace entity @s horse.9 with air

# Reset craft result id
scoreboard players set @s cc.ft.craft_result 0

# ------------------------------- check recipes ------------------------------ #

function cchesed:bft/recipe/_all

# ------------------------------ block handling ------------------------------ #

# If block is broken or moved
execute unless block ~ ~ ~ minecraft:fletching_table run function cchesed:bft/block/remove