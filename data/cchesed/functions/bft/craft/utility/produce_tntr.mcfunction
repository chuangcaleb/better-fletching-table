data modify entity @s Item set value {id: "minecraft:firework_rocket", Count: 1b, tag: {display: {Name: '{"text":"TNT Rocket","color":"yellow","italic":false}'}, Enchantments: [{}], cchesed: {bft: {rocket: 1b}}}}

data modify entity @s Item.tag.cchesed.bft.uuid.1 set from entity @s UUID[0]
data modify entity @s Item.tag.cchesed.bft.uuid.2 set from entity @s UUID[1]
data modify entity @s Item.tag.cchesed.bft.uuid.3 set from entity @s UUID[2]
data modify entity @s Item.tag.cchesed.bft.uuid.4 set from entity @s UUID[3]

data modify entity @s Item.tag.Fireworks merge from entity @e[tag=cc.ft.llama,sort=nearest,limit=1] Items[{id: "minecraft:firework_rocket"}].tag.Fireworks