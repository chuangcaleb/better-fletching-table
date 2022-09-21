# * Check all recipes and produce the right output

# Bow
execute if data entity @s {Items:[{Slot:3b,id:"minecraft:stick"},{Slot:4b,id:"minecraft:string"},{Slot:7b,id:"minecraft:stick"},{Slot:9b,id:"minecraft:string"},{Slot:13b,id:"minecraft:stick"},{Slot:14b,id:"minecraft:string"}]} unless data entity @s Items:[{Slot:2b}] unless data entity @s Items:[{Slot:8b}] unless data entity @s Items:[{Slot:12b}] run function cchesed:bft/recipe/bow

# Arrow
execute if data entity @s {Items:[{Slot:2b,id:"minecraft:flint"},{Slot:7b,y_id:"minecraft:stick"},{Slot:12b,id:"minecraft:feather"}]} unless data entity @s Items:[{Slot:3b}] unless data entity @s Items:[{Slot:4b}] unless data entity @s Items:[{Slot:8b}] unless data entity @s Items:[{Slot:9b}] unless data entity @s Items:[{Slot:13b}] unless data entity @s Items:[{Slot:14b}] run function cchesed:bft/recipe/arrow

execute if data entity @s {Items:[{Slot:3b,id:"minecraft:flint"},{Slot:8b,id:"minecraft:stick"},{Slot:13b,id:"minecraft:feather"}]} unless data entity @s Items:[{Slot:2b}] unless data entity @s Items:[{Slot:4b}] unless data entity @s Items:[{Slot:7b}] unless data entity @s Items:[{Slot:9b}] unless data entity @s Items:[{Slot:12b}] unless data entity @s Items:[{Slot:14b}] run function cchesed:bft/recipe/arrow

execute if data entity @s {Items:[{Slot:4b,id:"minecraft:flint"},{Slot:9b,id:"minecraft:stick"},{Slot:14b,id:"minecraft:feather"}]} unless data entity @s Items:[{Slot:2b}] unless data entity @s Items:[{Slot:3b}] unless data entity @s Items:[{Slot:7b}] unless data entity @s Items:[{Slot:8b}] unless data entity @s Items:[{Slot:12b}] unless data entity @s Items:[{Slot:13b}] run function cchesed:bft/recipe/arrow
