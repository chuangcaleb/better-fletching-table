summon minecraft:item ~ ~1 ~ {Item: {id: "minecraft:stone_button", tag: {cchesed: {bft: {gui_ghost: 1b}}}, Count: 1b}, Tags: ["cc.ft.drop_item"]}
data modify entity @e[limit=1,type=minecraft:item,tag=cc.ft.drop_item,sort=nearest] Item set from entity @s Items[{Slot: 16b}]
