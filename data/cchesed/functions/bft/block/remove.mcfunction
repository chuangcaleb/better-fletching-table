data merge entity @s {ChestedHorse:0b}
tp @e[tag=cc.ft.table,distance=..0.9] ~ ~-500 ~
# kill @e[type=minecraft:item,nbt={Item:[{id:"minecraft:chest"}]}]
kill @s

particle block crafting_table ~ ~0.5 ~ 0.2 0.2 0.2 1 100 normal