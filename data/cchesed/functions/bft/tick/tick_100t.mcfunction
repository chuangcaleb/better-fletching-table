# ---------------------------------------------------------------------------- #
#                                Runs every 100t                               #
# ---------------------------------------------------------------------------- #

execute as @e[type=arrow,tag=cc.ft.phantom] at @s run function cchesed:bft/items/phantom/phantom_100t

execute as @e[type=small_fireball] if entity @s[distance=128..] run kill @s


schedule function cchesed:bft/tick/tick_100t 100t replace