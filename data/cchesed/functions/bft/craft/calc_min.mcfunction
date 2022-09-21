scoreboard players set .minimum cc.ft.count 64

execute if data entity @s Items[{Slot:2b}] store result score .temp cc.ft.count run data get entity @s Items[{Slot:2b}].Count 1
execute if score .temp cc.ft.count < .minimum cc.ft.count run scoreboard players operation .minimum cc.ft.count = .temp cc.ft.count

execute if data entity @s Items[{Slot:3b}] store result score .temp cc.ft.count run data get entity @s Items[{Slot:3b}].Count 1
execute if score .temp cc.ft.count < .minimum cc.ft.count run scoreboard players operation .minimum cc.ft.count = .temp cc.ft.count

execute if data entity @s Items[{Slot:4b}] store result score .temp cc.ft.count run data get entity @s Items[{Slot:4b}].Count 1
execute if score .temp cc.ft.count < .minimum cc.ft.count run scoreboard players operation .minimum cc.ft.count = .temp cc.ft.count

execute if data entity @s Items[{Slot:7b}] store result score .temp cc.ft.count run data get entity @s Items[{Slot:7b}].Count 1
execute if score .temp cc.ft.count < .minimum cc.ft.count run scoreboard players operation .minimum cc.ft.count = .temp cc.ft.count

execute if data entity @s Items[{Slot:8b}] store result score .temp cc.ft.count run data get entity @s Items[{Slot:8b}].Count 1
execute if score .temp cc.ft.count < .minimum cc.ft.count run scoreboard players operation .minimum cc.ft.count = .temp cc.ft.count

execute if data entity @s Items[{Slot:9b}] store result score .temp cc.ft.count run data get entity @s Items[{Slot:9b}].Count 1
execute if score .temp cc.ft.count < .minimum cc.ft.count run scoreboard players operation .minimum cc.ft.count = .temp cc.ft.count

execute if data entity @s Items[{Slot:12b}] store result score .temp cc.ft.count run data get entity @s Items[{Slot:12b}].Count 1
execute if score .temp cc.ft.count < .minimum cc.ft.count run scoreboard players operation .minimum cc.ft.count = .temp cc.ft.count

execute if data entity @s Items[{Slot:13b}] store result score .temp cc.ft.count run data get entity @s Items[{Slot:13b}].Count 1
execute if score .temp cc.ft.count < .minimum cc.ft.count run scoreboard players operation .minimum cc.ft.count = .temp cc.ft.count

execute if data entity @s Items[{Slot:14b}] store result score .temp cc.ft.count run data get entity @s Items[{Slot:14b}].Count 1
execute if score .temp cc.ft.count < .minimum cc.ft.count run scoreboard players operation .minimum cc.ft.count = .temp cc.ft.count

# stack overflow is individual to craft