scoreboard players operation .count_rem cc.ft.quiver = .count_sum cc.ft.quiver
scoreboard players operation .count_rem cc.ft.quiver -= .127 cc.const

item replace entity @s weapon.mainhand from entity @s weapon.offhand cchesed:bft/set_count_quiver_rem

summon armor_stand ~ -300 ~ {Tags:["cc.ft.quiver_temp"],HandItems:[{id:"minecraft:air",Count:1b},{}]}

item replace entity @e[tag=cc.ft.quiver_temp,limit=1] weapon.mainhand from entity @s weapon.mainhand

data modify entity @e[tag=cc.ft.quiver_temp,limit=1] HandItems[0].Count set value 127

item replace entity @s weapon.offhand from entity @e[tag=cc.ft.quiver_temp,limit=1] weapon.mainhand

kill @e[tag=cc.ft.quiver_temp,limit=1]