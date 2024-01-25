summon armor_stand ~ -300 ~ {Tags: ["cc.ft.tntr_temp"], HandItems: [{id: "minecraft:air", Count: 1b}, {}]}

execute if entity @s[nbt={SelectedItem: {tag: {Enchantments: [{id: "minecraft:multishot"}], ChargedProjectiles: [{tag: {cchesed: {bft: {rocket: 1b}}}}]}}}] run function cchesed:bft/items/rocket/tntr/clr_ms/mainh

execute if entity @s[nbt={Inventory: [{Slot: -106b, tag: {Enchantments: [{id: "minecraft:multishot"}], ChargedProjectiles: [{tag: {cchesed: {bft: {rocket: 1b}}}}]}}]}] run function cchesed:bft/items/rocket/tntr/clr_ms/offh

advancement revoke @s only cchesed:bft/utility/get_multishot_tnt