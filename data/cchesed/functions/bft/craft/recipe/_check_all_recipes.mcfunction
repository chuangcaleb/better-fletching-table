# * Check all recipes and produce the right output

# Count empty slots
function cchesed:bft/craft/recipe/_count_empty_slots

# Bow
execute if data entity @s {Items: [{Slot: 3b, id: "minecraft:stick"}, {Slot: 4b, id: "minecraft:string"}, {Slot: 7b, id: "minecraft:stick"}, {Slot: 9b, id: "minecraft:string"}, {Slot: 13b, id: "minecraft:stick"}, {Slot: 14b, id: "minecraft:string"}]} unless data entity @s {Items: [{Slot: 2b}]} unless data entity @s {Items: [{Slot: 8b}]} unless data entity @s {Items: [{Slot: 12b}]} run function cchesed:bft/craft/recipe/bow

# Crossbow
execute if data entity @s {Items: [{Slot: 2b, id: "minecraft:stick"}, {Slot: 3b, id: "minecraft:iron_ingot"}, {Slot: 4b, id: "minecraft:stick"}, {Slot: 7b, id: "minecraft:string"}, {Slot: 8b, id: "minecraft:tripwire_hook"}, {Slot: 9b, id: "minecraft:string"}, {Slot: 13b, id: "minecraft:stick"}]} unless data entity @s {Items: [{Slot: 12b}]} unless data entity @s {Items: [{Slot: 14b}]} run function cchesed:bft/craft/recipe/crossbow


# Arrow
execute if data entity @s {Items: [{Slot: 3b, id: "minecraft:flint"}, {Slot: 8b, id: "minecraft:stick"}, {Slot: 13b, id: "minecraft:feather"}]} unless data entity @s {Items: [{Slot: 2b}]} unless data entity @s {Items: [{Slot: 4b}]} unless data entity @s {Items: [{Slot: 7b}]} unless data entity @s {Items: [{Slot: 9b}]} unless data entity @s {Items: [{Slot: 12b}]} unless data entity @s {Items: [{Slot: 14b}]} run function cchesed:bft/craft/recipe/arrow

# spectral arrow
execute if data entity @s Items[{id: "minecraft:arrow"}] if data entity @s Items[{id: "minecraft:glowstone_dust"}] if score @s cc.ft.empty_slots matches 7 run function cchesed:bft/craft/recipe/spectral_arrow

# fire-charged arrow
execute if data entity @s {Items: [{Slot: 3b, id: "minecraft:fire_charge"}, {Slot: 8b, id: "minecraft:stick"}, {Slot: 13b, id: "minecraft:feather"}]} unless data entity @s {Items: [{Slot: 2b}]} unless data entity @s {Items: [{Slot: 4b}]} unless data entity @s {Items: [{Slot: 7b}]} unless data entity @s {Items: [{Slot: 9b}]} unless data entity @s {Items: [{Slot: 12b}]} unless data entity @s {Items: [{Slot: 14b}]} run function cchesed:bft/craft/recipe/fire


# tntr
execute if data entity @s Items[{id: "minecraft:firework_rocket", tag: {Fireworks: {Explosions: [{Type: 1b}]}}}] if data entity @s Items[{id: "minecraft:tnt"}] if score @s cc.ft.empty_slots matches 7 run function cchesed:bft/craft/recipe/tntr


# Target
execute if data entity @s {Items: [{Slot: 3b, id: "minecraft:redstone"}, {Slot: 7b, id: "minecraft:redstone"}, {Slot: 8b, id: "minecraft:hay_block"}, {Slot: 9b, id: "minecraft:redstone"}, {Slot: 13b, id: "minecraft:redstone"}]} unless data entity @s {Items: [{Slot: 2b}]} unless data entity @s {Items: [{Slot: 4b}]} unless data entity @s {Items: [{Slot: 12b}]} unless data entity @s {Items: [{Slot: 14b}]} run function cchesed:bft/craft/recipe/target
execute if data entity @s {Items: [{Slot: 3b, id: "minecraft:redstone"}, {Slot: 7b, id: "minecraft:redstone"}, {Slot: 8b, id: "minecraft:dried_kelp_block"}, {Slot: 9b, id: "minecraft:redstone"}, {Slot: 13b, id: "minecraft:redstone"}]} unless data entity @s {Items: [{Slot: 2b}]} unless data entity @s {Items: [{Slot: 4b}]} unless data entity @s {Items: [{Slot: 12b}]} unless data entity @s {Items: [{Slot: 14b}]} run function cchesed:bft/craft/recipe/target


# Phantom Arrow
execute if data entity @s {Items: [{Slot: 3b, id: "minecraft:flint"}, {Slot: 8b, id: "minecraft:stick"}, {Slot: 13b, id: "minecraft:phantom_membrane"}]} unless data entity @s {Items: [{Slot: 2b}]} unless data entity @s {Items: [{Slot: 4b}]} unless data entity @s {Items: [{Slot: 7b}]} unless data entity @s {Items: [{Slot: 9b}]} unless data entity @s {Items: [{Slot: 12b}]} unless data entity @s {Items: [{Slot: 14b}]} run function cchesed:bft/craft/recipe/phantom

# Chorus Arrow
execute if data entity @s {Items: [{Slot: 3b, id: "minecraft:flint"}, {Slot: 8b, id: "minecraft:stick"}, {Slot: 13b, id: "minecraft:chorus_fruit"}]} unless data entity @s {Items: [{Slot: 2b}]} unless data entity @s {Items: [{Slot: 4b}]} unless data entity @s {Items: [{Slot: 7b}]} unless data entity @s {Items: [{Slot: 9b}]} unless data entity @s {Items: [{Slot: 12b}]} unless data entity @s {Items: [{Slot: 14b}]} run function cchesed:bft/craft/recipe/chorus

# Underwater Missile
execute if data entity @s Items[{id: "minecraft:gunpowder"}] if data entity @s Items[{id: "minecraft:dried_kelp"}] if data entity @s Items[{id: "minecraft:kelp"}] if score @s cc.ft.empty_slots matches 6 run function cchesed:bft/craft/recipe/under_missile
