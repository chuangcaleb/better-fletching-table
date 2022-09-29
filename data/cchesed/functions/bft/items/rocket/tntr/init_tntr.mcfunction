summon firework_rocket ~ ~ ~ {Tags:["cc.ft.rocket","cc.ft.rocket_init","cc.ft.processed_rocket"],Passengers:[{id:"minecraft:marker",Tags:["cc.ft.rocket_marker","cc.ft.tntr_marker"]}]}

data modify entity @e[tag=cc.ft.rocket_init,limit=1] {} merge from entity @s {}

tag @e[tag=cc.ft.rocket_init] remove cc.ft.rocket_init

