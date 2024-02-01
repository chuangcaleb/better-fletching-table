data modify entity @s power set from entity @e[tag=cc.ft.fire_charge_a,sort=nearest,limit=1] Motion
data modify entity @s Owner set from entity @e[tag=cc.ft.fire_charge_a,sort=nearest,limit=1] Owner

# slow down a bit!
execute store result entity @s power[0] double 0.0000003 run data get entity @s power[0] 1000000
execute store result entity @s power[1] double 0.0000003 run data get entity @s power[1] 1000000
execute store result entity @s power[2] double 0.0000003 run data get entity @s power[2] 1000000