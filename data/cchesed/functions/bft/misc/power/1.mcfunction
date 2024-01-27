execute store result entity @s Motion[0] double 0.0000012 run data get entity @s Motion[0] 1000000
execute store result entity @s Motion[1] double 0.0000012 run data get entity @s Motion[1] 1000000
execute store result entity @s Motion[2] double 0.0000012 run data get entity @s Motion[2] 1000000

# Final Multiplier = Target Damage / Initial Damage / Speed Multiplier
# Target Damage: 2.4
# Power I → Damage: 3.0
# Speed Multiplier: 1.2
# Final Multiplier: 0.6666666667

execute store result entity @s damage double 0.000000006666666667 run data get entity @s damage 100000000
