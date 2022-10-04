execute if entity @p[distance=120..] run kill @s

# execute store result score @s cc.ft.dx run data get entity @s Motion[0] 1000
# execute store result score @s cc.ft.dy run data get entity @s Motion[1] 1000
# execute store result score @s cc.ft.dz run data get entity @s Motion[2] 1000

# scoreboard players operation @s cc.ft.temp = @s cc.ft.dx
# scoreboard players operation @s cc.ft.temp += @s cc.ft.dy
# scoreboard players operation @s cc.ft.temp += @s cc.ft.dz

# scoreboard players reset @s cc.ft.temp