setblock ~ ~ ~ water[level=1]
# summon tnt ~ ~ ~ {Fuse:0,Tags:["cc.ft.tntt_explosion"],CustomName:'{"text":"TNT Target","color":"yellow"}'}

tag @s remove cc.ft.tntt
tag @s add cc.ft.tntt_rplc

schedule function cchesed:bft/items/tntt/replace_water 2t