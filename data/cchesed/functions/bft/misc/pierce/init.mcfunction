tag @s add cc.ft.pierce
tag @s add cc.ft.tick

data modify entity @s Glowing set value 1b
# execute store result score @s cc.ft.pierce_count run data get entity @s PierceLevel

# Init Motion and PierceLevel for first tick
execute store result score @s cc.ft.mx run data get entity @s Motion[0] 1000
execute store result score @s cc.ft.my run data get entity @s Motion[1] 1000
execute store result score @s cc.ft.mz run data get entity @s Motion[2] 1000
execute store result score @s cc.ft.pierce_count run data get entity @s PierceLevel
