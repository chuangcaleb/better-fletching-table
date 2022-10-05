# If sum is more than a stack (64)

item replace entity @s weapon.offhand with air

summon armor_stand ~ -300 ~ {Tags:["cc.ft.quiver_temp"],HandItems:[{id:"minecraft:air",Count:1b},{}]}

item replace entity @e[tag=cc.ft.quiver_temp,limit=1] weapon.mainhand from entity @s weapon.mainhand 
# NOTE:  Item modifiers to set count >64 doesnt work, that's why we have a second step
execute store result entity @e[tag=cc.ft.quiver_temp,limit=1] HandItems[0].Count int 1 run scoreboard players get .count_sum cc.ft.quiver

item replace entity @s weapon.mainhand from entity @e[tag=cc.ft.quiver_temp,limit=1] weapon.mainhand

kill @e[tag=cc.ft.quiver_temp,limit=1]