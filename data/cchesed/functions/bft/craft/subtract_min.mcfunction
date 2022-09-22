# function cchesed:bft/craft/calc_min

scoreboard players operation @s cc.ft.to_subtract = @s cc.ft.minimum
scoreboard players operation @s cc.ft.to_subtract *= .1 cc.ft.count

item replace entity @s horse.0 from entity @s horse.0 cchesed:bft/subtract_min
item replace entity @s horse.1 from entity @s horse.1 cchesed:bft/subtract_min
item replace entity @s horse.2 from entity @s horse.2 cchesed:bft/subtract_min
item replace entity @s horse.5 from entity @s horse.5 cchesed:bft/subtract_min
item replace entity @s horse.6 from entity @s horse.6 cchesed:bft/subtract_min
item replace entity @s horse.7 from entity @s horse.7 cchesed:bft/subtract_min
item replace entity @s horse.10 from entity @s horse.10 cchesed:bft/subtract_min
item replace entity @s horse.11 from entity @s horse.11 cchesed:bft/subtract_min
item replace entity @s horse.12 from entity @s horse.12 cchesed:bft/subtract_min
