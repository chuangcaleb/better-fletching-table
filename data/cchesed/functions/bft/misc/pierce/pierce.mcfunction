# ------------------- Get last Motion and PierceLevel data ------------------- #

scoreboard players operation .mx cc.ft.pierce = @s cc.ft.mx
scoreboard players operation .my cc.ft.pierce = @s cc.ft.my
scoreboard players operation .mz cc.ft.pierce = @s cc.ft.mz

# scoreboard players operation #pierce cc.ft.pierce = @s pierce.pi
# scoreboard players remove #pierce pierce.store 1
scoreboard players remove @s cc.ft.pierce_count 1

particle minecraft:crit ~ ~ ~ 0 0 0 0 10 normal

data merge entity @s {inGround: 0b}
# tag @s remove cc.ft.inground
# data merge entity @s {inGround:0b,crit:1b}

# ---------------------------------------------------------------------------- #
#                                    raycast                                   #
# ---------------------------------------------------------------------------- #

summon marker ~ ~ ~ {Tags: [cc.ft.pierce_marker]}

# -------------------- get next tick's pos to face towards ------------------- #

execute as @e[type=marker,tag=cc.ft.pierce_marker] at @s run function cchesed:bft/misc/pierce/next_pos

# ---------------------------- Phase through block --------------------------- #

scoreboard players set .loop cc.ft.pierce 18

# Initial coordinates
execute store result score .x1 cc.ft.pierce run data get entity @s Pos[0]
execute store result score .y1 cc.ft.pierce run data get entity @s Pos[1]
execute store result score .z1 cc.ft.pierce run data get entity @s Pos[2]

# Facing where it would be at in the next tick, loop
execute facing entity @e[type=marker,tag=cc.ft.pierce_marker] feet run function cchesed:bft/misc/pierce/loop

# ----------------------------------- Save ----------------------------------- #

# Re-init Motion because it will be set to 0 from being in the block
execute store result entity @s Motion[0] double .001 run scoreboard players get .mx cc.ft.pierce
execute store result entity @s Motion[1] double .001 run scoreboard players get .my cc.ft.pierce
execute store result entity @s Motion[2] double .001 run scoreboard players get .mz cc.ft.pierce
execute store result entity @s PierceLevel byte 1 run scoreboard players get @s cc.ft.pierce_count

# ---------------------------------- effects --------------------------------- #

execute at @s if block ~ ~ ~ #cchesed:taglib/walk_through run particle minecraft:crit ~ ~ ~ 0 0 0 0 10 normal

execute at @s unless block ~ ~ ~ #cchesed:taglib/walk_through run data merge entity @s {inGround: 1b}

# ---------------------------------------------------------------------------- #
#                                    cleanup                                   #
# ---------------------------------------------------------------------------- #

kill @e[type=marker,tag=cc.ft.pierce_marker]