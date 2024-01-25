execute if entity @s[nbt={Color: 11052766}] run function cchesed:bft/items/phantom/init

execute if entity @s[nbt={Color: 16765762}] run function cchesed:bft/items/flaming/init

execute unless entity @s[nbt={PierceLevel: 0b}] run function cchesed:bft/misc/pierce/init

execute unless entity @s[nbt={damage: 2.0d}] run function cchesed:bft/misc/power/init

tag @s add cc.ft.proccesed_arrow
