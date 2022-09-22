# ----------------------------------- Tick ----------------------------------- #

execute as @e[tag=cc.ft.llama] at @s if entity @p[distance=..6] run function cchesed:bft/tick/tick_llama

# remove all gui_ghost items
clear @a #cchesed:bft/ghost{cchesed:{bft:{gui_ghost:1b}}}
kill @e[type=item,nbt={Item:{tag:{cchesed:{bft:{gui_ghost:1b}}}}}]


# execute as @e[type=minecraft:firework_rocket,tag=!cc.ft.processed_rocket,nbt={FireworksItem:{tag:{cc.ft.er:1}}}] run function fletcht:custom_arrows/firework/firework_init
execute as @e[type=minecraft:firework_rocket,tag=!cc.ft.processed_rocket] run function cchesed:bft/proj/rocket/process
execute as @e[tag=cc.ft.rocket_marker] unless predicate cchesed:bft/rocket_marker at @s run function cchesed:bft/proj/rocket/explode
# execute as @e[tag=cc.ft.rocket_marker] unless predicate cchesed:bft/rocket_marker run particle minecraft:crit ~ ~ ~ 0 0 0 1 1000 normal