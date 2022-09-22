# * set StackOutputCount for non stackable

# stack overflow protection
# execute if score @s cc.ft.minimum matches 65.. run scoreboard players set @s cc.ft.minimum 64

# store count as whole 1
# execute store result storage cchesed:bft StackOutputCount int 1 run scoreboard players get @s cc.ft.minimum
data modify storage cchesed:bft StackOutputCount set value 1