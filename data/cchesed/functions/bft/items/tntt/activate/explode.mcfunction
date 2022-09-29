execute if block ~1 ~ ~ #cchesed:bft/water run tag @s add cc.ft.water_adj
execute if block ~-1 ~ ~ #cchesed:bft/water run tag @s add cc.ft.water_adj
execute if block ~ ~1 ~ #cchesed:bft/water run tag @s add cc.ft.water_adj
execute if block ~ ~-1 ~ #cchesed:bft/water run tag @s add cc.ft.water_adj
execute if block ~ ~ ~1 #cchesed:bft/water run tag @s add cc.ft.water_adj
execute if block ~ ~ ~-1 #cchesed:bft/water run tag @s add cc.ft.water_adj

# Check for depth
execute unless block ~ ~2 ~ #cchesed:bft/water run tag @s remove cc.ft.water_adj
execute unless block ~ ~3 ~ #cchesed:bft/water run tag @s remove cc.ft.water_adj

execute if entity @s[tag=cc.ft.water_adj] run function cchesed:bft/items/tntt/activate/deep_charge
execute unless entity @s[tag=cc.ft.water_adj] run function cchesed:bft/items/tntt/activate/normal_charge


# function cchesed:bft/items/tntt/activate/explode
setblock ~ ~ ~ water[level=1]

tag @s remove cc.ft.tntt
tag @s add cc.ft.tntt_rplc

schedule function cchesed:bft/items/tntt/activate/replace_water 2t