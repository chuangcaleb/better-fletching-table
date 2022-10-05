execute store result score .count_main cc.ft.quiver run data get entity @s SelectedItem.Count
execute store result score .count_offh cc.ft.quiver run data get entity @s Inventory[{Slot:-106b}].Count


scoreboard players operation .count_sum cc.ft.quiver = .count_main cc.ft.quiver
scoreboard players operation .count_sum cc.ft.quiver += .count_offh cc.ft.quiver


execute if score .count_sum cc.ft.quiver matches ..64 run function cchesed:bft/items/quiver/merge/underflow
execute if score .count_sum cc.ft.quiver matches 65..127 run function cchesed:bft/items/quiver/merge/overflow

# For some reason, they don't like a count of 128, so we need to cap it at 127
execute if score .count_sum cc.ft.quiver matches 128..255 run function cchesed:bft/items/quiver/merge/128

# execute if score .count_sum cc.ft.quiver matches 129.. run function cchesed:bft/items/quiver/merge/overflow_quiver