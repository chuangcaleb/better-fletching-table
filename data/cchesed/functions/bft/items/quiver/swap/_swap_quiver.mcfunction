summon armor_stand ~ -300 ~ {Tags:["cc.ft.quiver_swap"],HandItems:[{id:"minecraft:air",Count:1b},{}]}

execute if data entity @s Inventory[{Slot:0b,tag:{cchesed:{bft:{quiver:1b}}}}] run function cchesed:bft/items/quiver/swap/0
execute if data entity @s Inventory[{Slot:1b,tag:{cchesed:{bft:{quiver:1b}}}}] run function cchesed:bft/items/quiver/swap/1
execute if data entity @s Inventory[{Slot:2b,tag:{cchesed:{bft:{quiver:1b}}}}] run function cchesed:bft/items/quiver/swap/2
execute if data entity @s Inventory[{Slot:3b,tag:{cchesed:{bft:{quiver:1b}}}}] run function cchesed:bft/items/quiver/swap/3
execute if data entity @s Inventory[{Slot:4b,tag:{cchesed:{bft:{quiver:1b}}}}] run function cchesed:bft/items/quiver/swap/4
execute if data entity @s Inventory[{Slot:5b,tag:{cchesed:{bft:{quiver:1b}}}}] run function cchesed:bft/items/quiver/swap/5
execute if data entity @s Inventory[{Slot:6b,tag:{cchesed:{bft:{quiver:1b}}}}] run function cchesed:bft/items/quiver/swap/6
execute if data entity @s Inventory[{Slot:7b,tag:{cchesed:{bft:{quiver:1b}}}}] run function cchesed:bft/items/quiver/swap/7
execute if data entity @s Inventory[{Slot:8b,tag:{cchesed:{bft:{quiver:1b}}}}] run function cchesed:bft/items/quiver/swap/8
execute if data entity @s Inventory[{Slot:9b,tag:{cchesed:{bft:{quiver:1b}}}}] run function cchesed:bft/items/quiver/swap/9
execute if data entity @s Inventory[{Slot:10b,tag:{cchesed:{bft:{quiver:1b}}}}] run function cchesed:bft/items/quiver/swap/10
execute if data entity @s Inventory[{Slot:11b,tag:{cchesed:{bft:{quiver:1b}}}}] run function cchesed:bft/items/quiver/swap/11
execute if data entity @s Inventory[{Slot:12b,tag:{cchesed:{bft:{quiver:1b}}}}] run function cchesed:bft/items/quiver/swap/12
execute if data entity @s Inventory[{Slot:13b,tag:{cchesed:{bft:{quiver:1b}}}}] run function cchesed:bft/items/quiver/swap/13
execute if data entity @s Inventory[{Slot:14b,tag:{cchesed:{bft:{quiver:1b}}}}] run function cchesed:bft/items/quiver/swap/14
execute if data entity @s Inventory[{Slot:15b,tag:{cchesed:{bft:{quiver:1b}}}}] run function cchesed:bft/items/quiver/swap/15
execute if data entity @s Inventory[{Slot:16b,tag:{cchesed:{bft:{quiver:1b}}}}] run function cchesed:bft/items/quiver/swap/16
execute if data entity @s Inventory[{Slot:17b,tag:{cchesed:{bft:{quiver:1b}}}}] run function cchesed:bft/items/quiver/swap/17
execute if data entity @s Inventory[{Slot:18b,tag:{cchesed:{bft:{quiver:1b}}}}] run function cchesed:bft/items/quiver/swap/18
execute if data entity @s Inventory[{Slot:19b,tag:{cchesed:{bft:{quiver:1b}}}}] run function cchesed:bft/items/quiver/swap/19
execute if data entity @s Inventory[{Slot:20b,tag:{cchesed:{bft:{quiver:1b}}}}] run function cchesed:bft/items/quiver/swap/20
execute if data entity @s Inventory[{Slot:21b,tag:{cchesed:{bft:{quiver:1b}}}}] run function cchesed:bft/items/quiver/swap/21
execute if data entity @s Inventory[{Slot:22b,tag:{cchesed:{bft:{quiver:1b}}}}] run function cchesed:bft/items/quiver/swap/22
execute if data entity @s Inventory[{Slot:23b,tag:{cchesed:{bft:{quiver:1b}}}}] run function cchesed:bft/items/quiver/swap/23
execute if data entity @s Inventory[{Slot:24b,tag:{cchesed:{bft:{quiver:1b}}}}] run function cchesed:bft/items/quiver/swap/24
execute if data entity @s Inventory[{Slot:25b,tag:{cchesed:{bft:{quiver:1b}}}}] run function cchesed:bft/items/quiver/swap/25
execute if data entity @s Inventory[{Slot:26b,tag:{cchesed:{bft:{quiver:1b}}}}] run function cchesed:bft/items/quiver/swap/26
execute if data entity @s Inventory[{Slot:27b,tag:{cchesed:{bft:{quiver:1b}}}}] run function cchesed:bft/items/quiver/swap/27
execute if data entity @s Inventory[{Slot:28b,tag:{cchesed:{bft:{quiver:1b}}}}] run function cchesed:bft/items/quiver/swap/28
execute if data entity @s Inventory[{Slot:29b,tag:{cchesed:{bft:{quiver:1b}}}}] run function cchesed:bft/items/quiver/swap/29
execute if data entity @s Inventory[{Slot:30b,tag:{cchesed:{bft:{quiver:1b}}}}] run function cchesed:bft/items/quiver/swap/30
execute if data entity @s Inventory[{Slot:31b,tag:{cchesed:{bft:{quiver:1b}}}}] run function cchesed:bft/items/quiver/swap/31
execute if data entity @s Inventory[{Slot:32b,tag:{cchesed:{bft:{quiver:1b}}}}] run function cchesed:bft/items/quiver/swap/32
execute if data entity @s Inventory[{Slot:33b,tag:{cchesed:{bft:{quiver:1b}}}}] run function cchesed:bft/items/quiver/swap/33
execute if data entity @s Inventory[{Slot:34b,tag:{cchesed:{bft:{quiver:1b}}}}] run function cchesed:bft/items/quiver/swap/34
execute if data entity @s Inventory[{Slot:35b,tag:{cchesed:{bft:{quiver:1b}}}}] run function cchesed:bft/items/quiver/swap/35

# item replace entity @s weapon.offhand with air
kill @e[tag=cc.ft.quiver_swap]