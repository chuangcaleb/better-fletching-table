# ---------------------------------------------------------------------------- #
#                                Runs every 100t                               #
# ---------------------------------------------------------------------------- #

execute as @e[tag=cc.ft.tntt] at @s run function cchesed:bft/items/tntt/tntt_100t
execute as @e[type=arrow,tag=cc.ft.phantom] at @s if entity @p[distance=120..] run kill @s


schedule function cchesed:bft/tick/tick_100t 100t replace