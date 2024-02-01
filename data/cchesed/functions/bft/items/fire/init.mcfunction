# data modify entity @s Fire set value 2000s
execute unless data entity @s {ShotFromCrossbow: 1b} run return fail

stopsound @a[distance=..16] player minecraft:entity.arrow.shoot
stopsound @a[distance=..16] player minecraft:item.crossbow.shoot
playsound minecraft:entity.blaze.shoot player @a[distance=..16]

execute summon small_fireball run data modify entity @s Motion set from entity @e[type=arrow,sort=nearest,limit=1] Motion
kill @s