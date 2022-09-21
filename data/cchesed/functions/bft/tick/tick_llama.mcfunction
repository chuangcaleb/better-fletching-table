# Every tick on the llama

# ------------------------ Intiialize fletching table ------------------------ #

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


# ------------------------------- check recipes ------------------------------ #

# Bow
execute if data entity @s {Items:[{Slot:3b,id:"minecraft:stick"},{Slot:4b,id:"minecraft:string"},{Slot:7b,id:"minecraft:stick"},{Slot:9b,id:"minecraft:string"},{Slot:13b,id:"minecraft:stick"}]} unless data entity @s Items:[{Slot:2b}] unless data entity @s Items:[{Slot:8b}] unless data entity @s Items:[{Slot:12b}] unless data entity @s Items:[{Slot:14b}] run function cchesed:bft/craft/bow

# Arrow
execute if data entity @s {Items:[{Slot:2b,id:"minecraft:flint"},{Slot:7b,y_id:"minecraft:stick"},{Slot:12b,id:"minecraft:feather"}]} unless data entity @s Items:[{Slot:3b}] unless data entity @s Items:[{Slot:4b}] unless data entity @s Items:[{Slot:8b}] unless data entity @s Items:[{Slot:9b}] unless data entity @s Items:[{Slot:13b}] unless data entity @s Items:[{Slot:14b}] run function cchesed:bft/craft/arrow

execute if data entity @s {Items:[{Slot:3b,id:"minecraft:flint"},{Slot:8b,id:"minecraft:stick"},{Slot:13b,id:"minecraft:feather"}]} unless data entity @s Items:[{Slot:2b}] unless data entity @s Items:[{Slot:4b}] unless data entity @s Items:[{Slot:7b}] unless data entity @s Items:[{Slot:9b}] unless data entity @s Items:[{Slot:12b}] unless data entity @s Items:[{Slot:14b}] run function cchesed:bft/craft/arrow

execute if data entity @s {Items:[{Slot:4b,id:"minecraft:flint"},{Slot:9b,id:"minecraft:stick"},{Slot:14b,id:"minecraft:feather"}]} unless data entity @s Items:[{Slot:2b}] unless data entity @s Items:[{Slot:3b}] unless data entity @s Items:[{Slot:7b}] unless data entity @s Items:[{Slot:8b}] unless data entity @s Items:[{Slot:12b}] unless data entity @s Items:[{Slot:13b}] run function cchesed:bft/craft/arrow


# ------------------------------ block handling ------------------------------ #

# If block is broken or moved
execute unless block ~ ~ ~ minecraft:fletching_table run function cchesed:bft/block/remove