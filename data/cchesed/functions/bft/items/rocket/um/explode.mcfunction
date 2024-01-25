execute if block ~ ~ ~ #cchesed:bft/water run function cchesed:bft/items/rocket/um/underwater_charge

execute unless block ~ ~ ~ #cchesed:bft/water run summon item ~ ~ ~ {Item: {id: "minecraft:firework_rocket", Count: 1b, tag: {display: {Name: '{"text":"Light Underwater Missile","color":"yellow","italic":false}'}, Fireworks: {}, Enchantments: [{}], cchesed: {bft: {rocket: 2b}}}}}