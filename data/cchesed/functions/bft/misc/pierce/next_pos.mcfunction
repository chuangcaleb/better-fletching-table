# Make marker go to next pos

execute store result score .next_x cc.ft.pierce run data get entity @s Pos[0] 10000
execute store result score .next_y cc.ft.pierce run data get entity @s Pos[1] 10000
execute store result score .next_z cc.ft.pierce run data get entity @s Pos[2] 10000

# scoreboard players operation .x2 cc.ft.pierce = .x1 cc.ft.pierce
# scoreboard players operation .y2 cc.ft.pierce = .y1 cc.ft.pierce
# scoreboard players operation .z2 cc.ft.pierce = .z1 cc.ft.pierce

scoreboard players operation .next_x cc.ft.pierce += .mx cc.ft.pierce
scoreboard players operation .next_y cc.ft.pierce += .my cc.ft.pierce
scoreboard players operation .next_z cc.ft.pierce += .mz cc.ft.pierce

execute store result entity @s Pos[0] double .0001 run scoreboard players get .next_x cc.ft.pierce
execute store result entity @s Pos[1] double .0001 run scoreboard players get .next_y cc.ft.pierce
execute store result entity @s Pos[2] double .0001 run scoreboard players get .next_z cc.ft.pierce
