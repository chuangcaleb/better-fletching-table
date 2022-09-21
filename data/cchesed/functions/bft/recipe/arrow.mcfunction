item replace entity @s horse.9 with minecraft:arrow{cchesed:{bft:{gui_ghost:1b}}} 4

scoreboard players set @s cc.ft.output_id 2

function cchesed:bft/craft/calc_min

# stack overflow protection
execute if score .minimum cc.ft.count matches 17.. run scoreboard players set .minimum cc.ft.count 16

# scoreboard players operation .stack cc.ft.count = .minimum cc.ft.count
# scoreboard players operation .stack cc.ft.count *= .4 cc.ft.count

# execute as @s store result entity @s Items[{Slot:11b}].Count int 4 run scoreboard players get .minimum cc.ft.count
# execute if score .stack cc.ft.count matches 4 run item replace entity @s horse.9 with minecraft:arrow{cchesed:{bft:{gui_ghost:1b}}} 4
