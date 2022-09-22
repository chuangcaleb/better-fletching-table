execute if score @s cc.ft.output_id matches 0 run data modify entity @e[limit=1,tag=cc.ft.drop_item] Item set value {id:"minecraft:bow", Count:1b}
execute if score @s cc.ft.output_id matches 1 run data modify entity @e[limit=1,tag=cc.ft.drop_item] Item set value {id:"minecraft:crossbow", Count:1b}


execute if score @s cc.ft.output_id matches 10 run data modify entity @e[limit=1,tag=cc.ft.drop_item] Item set value {id:"minecraft:arrow", Count:4b}
execute if score @s cc.ft.output_id matches 11 run data modify entity @e[limit=1,tag=cc.ft.drop_item] Item set value {id:"minecraft:spectral_arrow", Count:1b}


