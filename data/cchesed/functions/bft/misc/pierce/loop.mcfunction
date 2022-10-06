scoreboard players remove .loop cc.ft.pierce 1

# Next current coordinates
execute store result score .x2 cc.ft.pierce run data get entity @s Pos[0]
execute store result score .y2 cc.ft.pierce run data get entity @s Pos[1]
execute store result score .z2 cc.ft.pierce run data get entity @s Pos[2]

scoreboard players operation .dx cc.ft.pierce = .x2 cc.ft.pierce
scoreboard players operation .dy cc.ft.pierce = .y2 cc.ft.pierce
scoreboard players operation .dz cc.ft.pierce = .z2 cc.ft.pierce

scoreboard players operation .dx cc.ft.pierce -= .x1 cc.ft.pierce
scoreboard players operation .dy cc.ft.pierce -= .y1 cc.ft.pierce
scoreboard players operation .dz cc.ft.pierce -= .z1 cc.ft.pierce

tp @s ^ ^ ^.1

execute if score .dx cc.ft.pierce matches -1..1 if score .dy cc.ft.pierce matches -1..1 if score .dz cc.ft.pierce matches -1..1 if score .loop cc.ft.pierce matches 1.. positioned as @s run function cchesed:bft/misc/pierce/loop