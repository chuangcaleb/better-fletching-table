# summon llama ~ ~9999 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:0b,DeathLootTable:"cchesed:bft/nothing",PersistenceRequired:1b,NoAI:1b,InLove:2147483647,Tame:1b,Strength:5,ChestedHorse:1b,Tags:["cc.ft.llama","cc.ft.table","cc.ft.llama_prep"],CustomName:'{"text":"Fletching Table","italic":false}',ActiveEffects:[{Id:14,Amplifier:1b,Duration:2147483647,ShowParticles:0b}],DecorItem:{id:"minecraft:knowledge_book",Count:1b,tag:{display:{Name:'{"text":""}'}}}}
summon llama ~ ~9999 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:0b,DeathLootTable:"cchesed:bft/nothing",PersistenceRequired:1b,NoAI:1b,InLove:2147483647,Tame:1b,Strength:5,ChestedHorse:1b,Tags:["cc.ft.llama","cc.ft.table","cc.ft.llama_prep"],CustomName:'{"text":"Fletching Table","italic":false}',ActiveEffects:[{Id:14,Amplifier:1b,Duration:2147483647,ShowParticles:0b}]}

summon armor_stand ~ ~-0.97 ~ {CustomNameVisible:0b,Silent:1b,Invulnerable:1b,Invisible:1b,Marker:1b,PersistenceRequired:1b,Tags:["cc.ft.table","cc.ft.astand"],ArmorItems:[{},{},{},{id:'minecraft:crafting_table',Count:1b}],CustomName:'{"text":"Fletching Table Armor Stand","italic":false}'}

execute as @e[tag=cc.ft.llama_prep] run function cchesed:bft/block/prep_llama

# summon falling_block ~0.5 ~ ~ {BlockState:{Name:"minecraft:fletching_table"},DropItem:0b,NoGravity:1b,Time:1,Tags:["cc.ft.table"]}
# summon falling_block ~-0.5 ~ ~ {BlockState:{Name:"minecraft:fletching_table"},DropItem:0b,NoGravity:1b,Time:1,Tags:["cc.ft.table"]}
# summon falling_block ~ ~0.001 ~ {BlockState:{Name:"minecraft:crafting_table"},DropItem:0b,NoGravity:1b,Time:1,Tags:["cc.ft.table","cc.ft.tabletop"]}
# # summon falling_block ~ ~-0.5 ~ {BlockState:{Name:"minecraft:fletching_table"},DropItem:0b,NoGravity:1b,Time:1,Tags:["cc.ft.table"]}
# summon falling_block ~ ~ ~0.5 {BlockState:{Name:"minecraft:fletching_table"},DropItem:0b,NoGravity:1b,Time:1,Tags:["cc.ft.table"]}
# summon falling_block ~ ~ ~-0.5 {BlockState:{Name:"minecraft:fletching_table"},DropItem:0b,NoGravity:1b,Time:1,Tags:["cc.ft.table"]}