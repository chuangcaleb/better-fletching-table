# ---------------------------------------------------------------------------- #
#                                Runs every 100t                               #
# ---------------------------------------------------------------------------- #

execute as @e[tag=cc.ft.tntt] at @s unless block ~ ~ ~ minecraft:target run kill @s


schedule function cchesed:bft/tick/tick_100t 100t replace