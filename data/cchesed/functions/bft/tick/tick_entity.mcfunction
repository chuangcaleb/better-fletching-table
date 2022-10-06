execute as @s[tag=cc.ft.llama] at @s if entity @p[distance=..6] run function cchesed:bft/tick/tick_llama

execute as @s[tag=cc.ft.rocket_marker] unless predicate cchesed:bft/rocket_marker at @s run function cchesed:bft/items/rocket/switch_explode

execute as @s[tag=cc.ft.pierce] at @s run function cchesed:bft/misc/pierce/tick