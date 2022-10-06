# Set silent if in normal flying motion
data merge entity @s[tag=!cc.ft.pierce.inblock] {Silent:1b}

execute if score @s[tag=cc.ft.pierce.inblock,tag=!cc.ft.pierce_grav] cc.ft.pierce_g matches 0 run function cchesed:bft/misc/pierce/gravity

# Add inGround tag
# execute if entity @s[tag=!cc.ft.inground,nbt={inGround:1b}] run tag @s add cc.ft.inground

# Pierce through one block
execute if entity @s[nbt={inGround:1b}] if score @s cc.ft.pierce_count matches 1.. run function cchesed:bft/misc/pierce/pierce
# execute if entity @s[tag=cc.ft.inground] if score @s cc.ft.pierce_count matches 1.. run function cchesed:bft/misc/pierce/pierce

# When in block: (?)
# Resume sound & gravity, reset inground
execute if entity @s[tag=!cc.ft.pierce.inblock,nbt={inGround:1b}] run function cchesed:bft/misc/pierce/sound
# execute if entity @s[tag=cc.ft.inground,tag=!cc.ft.pierce.inblock] run function cchesed:bft/misc/pierce/sound

# Store last tick's Motion and PierceLevel
execute store result score @s cc.ft.mx run data get entity @s Motion[0] 1000
execute store result score @s cc.ft.my run data get entity @s Motion[1] 1000
execute store result score @s cc.ft.mz run data get entity @s Motion[2] 1000
execute store result score @s cc.ft.pierce_count run data get entity @s PierceLevel
