summon llama ~ ~9999 ~ {NoGravity: 1b, Silent: 1b, Invulnerable: 1b, CustomNameVisible: 0b, DeathLootTable: "cchesed:bft/nothing", PersistenceRequired: 1b, NoAI: 1b, InLove: 2147483647, Tame: 1b, Strength: 5, ChestedHorse: 1b, Tags: ["cc.ft.tick", "cc.ft.llama", "cc.ft.table", "cc.ft.llama_prep"], CustomName: '{"text":"Fletching Table","italic":false}', active_effects: [{id: "minecraft:invisibility", amplifier: 1b, duration: 2147483647, show_particles: 0b}]}

summon block_display ~-0.375 ~0.25005 ~-0.375 {Tags: ["cc.ft.table", "cc.ft.table_display"], transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], translation: [0f, 0f, 0f], scale: [0.75f, 0.75f, 0.75f]}, block_state: {Name: "minecraft:crafting_table"}}

execute as @e[tag=cc.ft.llama_prep] run function cchesed:bft/block/prep_llama
