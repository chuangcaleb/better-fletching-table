# data merge entity @s {Items:[{id:"minecraft:arrow",Slot:11b,Count:4b}]}
item replace entity @s horse.9 with minecraft:arrow{cchesed:{bft:{gui_ghost:1b}}}
scoreboard players set @s cc.ft.output_id 2

function fletcht:craft/min-calc

# stack overflow protection
scoreboard players set @s[scores={cc.ft.min-count=16..}] cc.ft.min-count 16