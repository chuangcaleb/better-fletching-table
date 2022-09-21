# * Create output item

# Spawn in item
summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:stone_button",Count:1b},Tags:["cc.ft.drop_item"], Motion:[0.0,0.25,0.0]}



# Copy item data from output slot #########################

# produce item in output slot again
function cchesed:bft/recipe/_all_recipes

# copy it
data modify entity @e[limit=1,tag=cc.ft.drop_item,sort=nearest] Item set from entity @s Items[{Slot:11b}]

# #########################################################

# Remove utility tags
data remove entity @e[limit=1,tag=cc.ft.drop_item,sort=nearest] Item.tag.cchesed.bft.gui_ghost


# Subtract material cost
execute if score @s cc.ft.output_id matches 0..1 run function cchesed:bft/craft/subtract_1
execute if score @s cc.ft.output_id matches 2.. run function cchesed:bft/craft/subtract_min

# Player UI feedback
playsound minecraft:block.wood.step player @a[distance=..8] ~ ~ ~ 1 1.7