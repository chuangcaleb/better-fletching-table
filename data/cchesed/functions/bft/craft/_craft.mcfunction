# * Create output item

# Spawn in item
summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:stone_button",Count:1b},Tags:["cc.ft.drop_item"], Motion:[0.0,0.25,0.0]}


# ------------------------------- create output ------------------------------ #

# Copy item data from output slot #########################

# produce item in output slot again
function cchesed:bft/recipe/_all_recipes

# copy it
data modify entity @e[limit=1,tag=cc.ft.drop_item,sort=nearest] Item set from entity @s Items[{Slot:11b}]

# Remove utility tags
data remove entity @e[limit=1,tag=cc.ft.drop_item,sort=nearest] Item.tag.cchesed.bft.gui_ghost


# -------------------------- Subtract material cost -------------------------- #
# Check for shift-click
data modify storage cchesed:bft ShiftClicked set value 0
execute store result storage cchesed:bft ShiftClicked int 1 run data get entity @p Inventory[{tag:{cchesed:{bft:{gui_ghost:1b}}}}]

# If it's a non-stackable, simply subtract one count
execute if score @s cc.ft.output_id matches 0..1 run function cchesed:bft/craft/subtract_1
# If it's stackable, subtract one, but craft as many as possible if shift-clicked
execute if score @s cc.ft.output_id matches 2.. run function cchesed:bft/craft/craft_stackable

 # ---------------------- Modify count according to stack --------------------- 

scoreboard players operation .stack cc.ft.count = .minimum cc.ft.count
execute store result storage cchesed:bft OutputCount int 4 run scoreboard players get .minimum cc.ft.count
execute if data storage cchesed:bft {ShiftClicked:4} run data modify entity @e[limit=1,tag=cc.ft.drop_item,sort=nearest] Item.Count set from storage cchesed:bft OutputCount


# Player UI feedback
playsound minecraft:block.wood.step player @a[distance=..8] ~ ~ ~ 1 1.7