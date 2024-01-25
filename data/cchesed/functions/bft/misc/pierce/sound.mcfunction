tag @s add cc.ft.pierce.inblock

execute store result score @s cc.ft.pierce_g run data get entity @s NoGravity

data merge entity @s {Silent: 0b, inGround: 0b, NoGravity: 1b}
# data merge entity @s {Silent:0b,inGround:0b}
