# Get power level
execute store result score @s cc.ft.power run data get entity @s damage 10

# Get actual power value
scoreboard players operation @s cc.ft.power -= .25 cc.ft.count
scoreboard players operation @s cc.ft.power /= .5 cc.ft.count

# Cap at Power V
execute if score @s cc.ft.power matches 6.. run scoreboard players set @s cc.ft.power 5


# # Add bonus damage mult from power level
scoreboard players operation .bonus cc.ft.power = @s cc.ft.power
scoreboard players operation .bonus cc.ft.power *= .5 cc.ft.count

# ------------------------------ Get multiplier ------------------------------ #

scoreboard players operation @s cc.ft.power *= .4 cc.ft.count
# At least have 10, because that's the store result offset
scoreboard players operation @s cc.ft.power += .10 cc.ft.count


 # -------------------------- init damage/power value ------------------------ #
# Set base power of 2.0
scoreboard players operation .damage cc.ft.power = .2250 cc.ft.count
scoreboard players operation .damage cc.ft.power /= @s cc.ft.power

scoreboard players operation .damage cc.ft.power += .bonus cc.ft.power

# data modify entity @s damage set value 1.0
execute store result entity @s damage double .01 run scoreboard players get .damage cc.ft.power

# --------------------------- apply score to motion -------------------------- #

# Transfer scores
execute store result score @s cc.ft.dx run data get entity @s Motion[0] 1000000
execute store result score @s cc.ft.dy run data get entity @s Motion[1] 1000000
execute store result score @s cc.ft.dz run data get entity @s Motion[2] 1000000

scoreboard players operation @s cc.ft.dx *= @s cc.ft.power
scoreboard players operation @s cc.ft.dy *= @s cc.ft.power
scoreboard players operation @s cc.ft.dz *= @s cc.ft.power


# Cap maximum
# execute if score @s cc.ft.dx matches 2147483647.. run scoreboard players set @s cc.ft.dx 2147483647
# execute if score @s cc.ft.dy matches 2147483647.. run scoreboard players set @s cc.ft.dy 2147483647
# execute if score @s cc.ft.dz matches 2147483647.. run scoreboard players set @s cc.ft.dz 2147483647

# execute if score @s cc.ft.dx matches -2147483648 run scoreboard players set @s cc.ft.dx -2147483648
# execute if score @s cc.ft.dy matches -2147483648 run scoreboard players set @s cc.ft.dy -2147483648
# execute if score @s cc.ft.dz matches -2147483648 run scoreboard players set @s cc.ft.dz -2147483648

# store motion
execute store result entity @s Motion[0] double .0000001 run scoreboard players get @s cc.ft.dx
execute store result entity @s Motion[1] double .0000001 run scoreboard players get @s cc.ft.dy
execute store result entity @s Motion[2] double .0000001 run scoreboard players get @s cc.ft.dz