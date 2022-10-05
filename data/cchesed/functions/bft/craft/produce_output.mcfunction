# ------------------------------ non-stackables ------------------------------ #

execute if score @s cc.ft.output_id matches 0 run data modify entity @e[limit=1,tag=cc.ft.drop_item] Item set value {id:"minecraft:bow", Count:1b}
execute if score @s cc.ft.output_id matches 1 run data modify entity @e[limit=1,tag=cc.ft.drop_item] Item set value {id:"minecraft:crossbow", Count:1b}
execute if score @s cc.ft.output_id matches 2 run data modify entity @e[limit=1,tag=cc.ft.drop_item] Item set value {id:"minecraft:goat_horn", Count:1b, tag:{display:{Name:'{"text":"Goat Horn Quiver","italic":false,"color":"yellow"}'},Enchantments:[{}],instrument:"",cchesed:{bft:{quiver:1b}}}}


# ------------------------------ multiples of 4 ------------------------------ #

execute if score @s cc.ft.output_id matches 10 run data modify entity @e[limit=1,tag=cc.ft.drop_item] Item set value {id:"minecraft:arrow", Count:4b}


# ------------------------------ multiples of 2 ------------------------------ #

execute if score @s cc.ft.output_id matches 20 run data modify entity @e[limit=1,tag=cc.ft.drop_item] Item set value {id:"minecraft:tipped_arrow", Count:2b, tag:{display:{Name:'{"text":"Phantom Arrow","italic":false}'},cc.ft.pa:1,CustomPotionColor:11052766,HideFlags:32,cchesed:{bft:{phantom:1b}}}}


# ------------------------------ multiples of 1 ------------------------------ #

execute if score @s cc.ft.output_id matches 30 run data modify entity @e[limit=1,tag=cc.ft.drop_item] Item set value {id:"minecraft:spectral_arrow", Count:1b}


execute if score @s cc.ft.output_id matches 31 run function cchesed:bft/craft/utility/produce_tntr



execute if score @s cc.ft.output_id matches 32 run data modify entity @e[limit=1,tag=cc.ft.drop_item] Item set value {id:"minecraft:target", Count:1b}

execute if score @s cc.ft.output_id matches 33 run data modify entity @e[limit=1,tag=cc.ft.drop_item] Item set value {id:"minecraft:target", Count:1b, tag:{display:{Name:'{"text":"TNT Target","color":"yellow","italic":false}'},Enchantments:[{}], cchesed:{bft:{tnt_target:1b}}}}



execute if score @s cc.ft.output_id matches 34 run data modify entity @e[limit=1,tag=cc.ft.drop_item] Item set value {id:"minecraft:firework_rocket", Count:1b, tag:{display:{Name:'{"text":"Light Underwater Missile","color":"yellow","italic":false}'},Enchantments:[{}], cchesed:{bft:{rocket:2b}}}}
