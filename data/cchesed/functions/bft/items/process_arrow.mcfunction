execute if entity @s[nbt={Color: 11052766}] run function cchesed:bft/items/phantom/init

execute if entity @s[nbt={Color: 10715551}] on origin run function cchesed:bft/items/chorus/init

execute if entity @s[nbt={Color: 16765762}] run function cchesed:bft/items/flaming/init

execute unless entity @s[nbt={PierceLevel: 0b}] run function cchesed:bft/misc/pierce/init

function cchesed:bft/misc/power/init
scoreboard players reset @s cc.ft.power

tag @s add cc.ft.proccesed_arrow
