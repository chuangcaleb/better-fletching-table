# Reset
data modify storage cchesed:bft quiver.check_same.different.id set value 1b
data modify storage cchesed:bft quiver.check_same.different.tag set value 1b

# Set item id and tag
data modify storage cchesed:bft quiver.check_same.tempItem.id set from entity @s SelectedItem.id
data modify storage cchesed:bft quiver.check_same.tempItem.tag set from entity @s SelectedItem.tag

# Check difference success
execute store success storage cchesed:bft quiver.check_same.different.id byte 1 run data modify storage cchesed:bft quiver.check_same.tempItem.id set from entity @s Inventory[{Slot:-106b}].id

execute if data entity @s Inventory[{Slot:-106b}].tag store success storage cchesed:bft quiver.check_same.different.tag byte 1 run data modify storage cchesed:bft quiver.check_same.tempItem.tag set from entity @s Inventory[{Slot:-106b}].tag
execute unless data entity @s Inventory[{Slot:-106b}].tag run data modify storage cchesed:bft quiver.check_same.different.tag set value 0b

# IF the items have the same id and same tag, then advance
execute if data storage cchesed:bft quiver.check_same.different{id:0b} if data storage cchesed:bft quiver.check_same.different{tag:0b} run function cchesed:bft/items/quiver/merge_items
 