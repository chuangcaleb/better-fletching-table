# data modify entity @s Fire set value 2000s
execute unless data entity @s {ShotFromCrossbow: 1b} run return fail

stopsound @a[distance=..16] player minecraft:entity.arrow.shoot
stopsound @a[distance=..16] player minecraft:item.crossbow.shoot
playsound minecraft:entity.blaze.shoot player @a[distance=..16]

tag @s add cc.ft.fire_charge_a
execute summon small_fireball run function cchesed:bft/items/fire/init_fire_charge
kill @s