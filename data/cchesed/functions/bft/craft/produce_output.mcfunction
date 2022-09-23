execute if score @s cc.ft.output_id matches 0 run data modify entity @e[limit=1,tag=cc.ft.drop_item] Item set value {id:"minecraft:bow", Count:1b}
execute if score @s cc.ft.output_id matches 1 run data modify entity @e[limit=1,tag=cc.ft.drop_item] Item set value {id:"minecraft:crossbow", Count:1b}



execute if score @s cc.ft.output_id matches 10 run data modify entity @e[limit=1,tag=cc.ft.drop_item] Item set value {id:"minecraft:arrow", Count:4b}



execute if score @s cc.ft.output_id matches 30 run data modify entity @e[limit=1,tag=cc.ft.drop_item] Item set value {id:"minecraft:spectral_arrow", Count:1b}

execute if score @s cc.ft.output_id matches 31 run function cchesed:bft/craft/utility/produce_firework


execute if score @s cc.ft.output_id matches 32 run data modify entity @e[limit=1,tag=cc.ft.drop_item] Item set value {id:"minecraft:target", Count:1b}

execute if score @s cc.ft.output_id matches 33 run data modify entity @e[limit=1,tag=cc.ft.drop_item] Item set value {Enchantments:[{}],id:"minecraft:target", Count:1b, tag:{display:{Name:'{"text":"TNT Target","color":"yellow","italic":false}'},Enchantments:[{}], cchesed:{bft:{tnt_target:1b}}}}