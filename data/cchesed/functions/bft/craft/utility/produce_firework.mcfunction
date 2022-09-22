data modify entity @e[limit=1,tag=cc.ft.drop_item] Item set value {Enchantments:[{}],id:"minecraft:firework_rocket", Count:1b, tag:{display:{Name:'{"text":"TNT Rocket","color":"yellow","italic":false}'},Enchantments:[{}]}}

data modify entity @e[limit=1,tag=cc.ft.drop_item] Item.tag.Fireworks merge from entity @s Items[{id:"minecraft:firework_rocket"}].tag.Fireworks