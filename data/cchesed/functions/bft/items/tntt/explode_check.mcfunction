execute if block ~1 ~ ~ #cchesed:bft/water run tag @s add cc.ft.water_adj
execute if block ~-1 ~ ~ #cchesed:bft/water run tag @s add cc.ft.water_adj
execute if block ~ ~1 ~ #cchesed:bft/water run tag @s add cc.ft.water_adj
execute if block ~ ~-1 ~ #cchesed:bft/water run tag @s add cc.ft.water_adj
execute if block ~ ~ ~1 #cchesed:bft/water run tag @s add cc.ft.water_adj
execute if block ~ ~ ~-1 #cchesed:bft/water run tag @s add cc.ft.water_adj

# Check for depth
execute unless block ~ ~2 ~ #cchesed:bft/water run tag @s remove cc.ft.water_adj
execute unless block ~ ~3 ~ #cchesed:bft/water run tag @s remove cc.ft.water_adj

execute if entity @s[tag=cc.ft.water_adj] run function cchesed:bft/items/tntt/deep_charge
execute unless entity @s[tag=cc.ft.water_adj] run summon tnt ~ ~ ~ {Fuse:0,Tags:["cc.ft.tntt_explosion"],CustomName:'{"text":"TNT Target","color":"yellow"}'}


function cchesed:bft/items/tntt/explode