summon llama ~ ~9999 ~ {NoGravity: 1b, Silent: 1b, Invulnerable: 1b, CustomNameVisible: 0b, DeathLootTable: "cchesed:bft/nothing", PersistenceRequired: 1b, NoAI: 1b, InLove: 2147483647, Tame: 1b, Strength: 5, ChestedHorse: 1b, Tags: ["cc.ft.tick", "cc.ft.llama", "cc.ft.table", "cc.ft.llama_prep"], CustomName: '{"text":"Fletching Table","italic":false}', active_effects: [{id: "minecraft:invisibility", amplifier: 1b, duration: 2147483647, show_particles: 0b}]}

summon armor_stand ~ ~-0.97 ~ {CustomNameVisible: 0b, Silent: 1b, Invulnerable: 1b, Invisible: 1b, Marker: 1b, Tags: ["cc.ft.table", "cc.ft.astand"], ArmorItems: [{}, {}, {}, {id: "minecraft:crafting_table", Count: 1b}], CustomName: '{"text":"Fletching Table Armor Stand","italic":false}'}

execute as @e[tag=cc.ft.llama_prep] run function cchesed:bft/block/prep_llama
