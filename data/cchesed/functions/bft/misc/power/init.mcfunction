# Early return on non-player arrows
execute on origin if entity @s[type=!player] run return fail

# # Get power level
execute store result score @s cc.ft.power run data get entity @s damage 10

# Default arrow damage
execute if score @s cc.ft.power matches 20 run return fail

# Tweak Power bows
execute if score @s cc.ft.power matches 30 run return run function cchesed:bft/misc/power/1
execute if score @s cc.ft.power matches 35 run return run function cchesed:bft/misc/power/2
execute if score @s cc.ft.power matches 40 run return run function cchesed:bft/misc/power/3
execute if score @s cc.ft.power matches 45 run return run function cchesed:bft/misc/power/4
execute if score @s cc.ft.power matches 50.. run return run function cchesed:bft/misc/power/5

