scoreboard players set @s cc.ft.minimum 64
scoreboard players set @s cc.ft.slot_count 64

execute if data entity @s Items[{Slot:2b}] store result score @s cc.ft.slot_count run data get entity @s Items[{Slot:2b}].Count 1
execute if score @s cc.ft.slot_count < @s cc.ft.minimum run scoreboard players operation @s cc.ft.minimum = @s cc.ft.slot_count

execute if data entity @s Items[{Slot:3b}] store result score @s cc.ft.slot_count run data get entity @s Items[{Slot:3b}].Count 1
execute if score @s cc.ft.slot_count < @s cc.ft.minimum run scoreboard players operation @s cc.ft.minimum = @s cc.ft.slot_count

execute if data entity @s Items[{Slot:4b}] store result score @s cc.ft.slot_count run data get entity @s Items[{Slot:4b}].Count 1
execute if score @s cc.ft.slot_count < @s cc.ft.minimum run scoreboard players operation @s cc.ft.minimum = @s cc.ft.slot_count

execute if data entity @s Items[{Slot:7b}] store result score @s cc.ft.slot_count run data get entity @s Items[{Slot:7b}].Count 1
execute if score @s cc.ft.slot_count < @s cc.ft.minimum run scoreboard players operation @s cc.ft.minimum = @s cc.ft.slot_count

execute if data entity @s Items[{Slot:8b}] store result score @s cc.ft.slot_count run data get entity @s Items[{Slot:8b}].Count 1
execute if score @s cc.ft.slot_count < @s cc.ft.minimum run scoreboard players operation @s cc.ft.minimum = @s cc.ft.slot_count

execute if data entity @s Items[{Slot:9b}] store result score @s cc.ft.slot_count run data get entity @s Items[{Slot:9b}].Count 1
execute if score @s cc.ft.slot_count < @s cc.ft.minimum run scoreboard players operation @s cc.ft.minimum = @s cc.ft.slot_count

execute if data entity @s Items[{Slot:12b}] store result score @s cc.ft.slot_count run data get entity @s Items[{Slot:12b}].Count 1
execute if score @s cc.ft.slot_count < @s cc.ft.minimum run scoreboard players operation @s cc.ft.minimum = @s cc.ft.slot_count

execute if data entity @s Items[{Slot:13b}] store result score @s cc.ft.slot_count run data get entity @s Items[{Slot:13b}].Count 1
execute if score @s cc.ft.slot_count < @s cc.ft.minimum run scoreboard players operation @s cc.ft.minimum = @s cc.ft.slot_count

execute if data entity @s Items[{Slot:14b}] store result score @s cc.ft.slot_count run data get entity @s Items[{Slot:14b}].Count 1
execute if score @s cc.ft.slot_count < @s cc.ft.minimum run scoreboard players operation @s cc.ft.minimum = @s cc.ft.slot_count