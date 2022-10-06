# --------------------------------- Uninstall -------------------------------- #

# Remove scoreboards
scoreboard objectives remove cc.ft.raycast_counter
scoreboard objectives remove cc.ft.output_id

scoreboard objectives remove cc.const

scoreboard objectives remove cc.ft.slot_count
scoreboard objectives remove cc.ft.minimum
scoreboard objectives remove cc.ft.to_subtract
scoreboard objectives remove cc.ft.empty_slots

scoreboard objectives remove cc.ft.power
scoreboard objectives remove cc.ft.dx
scoreboard objectives remove cc.ft.dy
scoreboard objectives remove cc.ft.dz

scoreboard objectives remove cc.ft.quiver
scoreboard objectives remove cc.ft.pierce_count

# Remove tags
tag @e remove cc.ft.processed_rocket

# Reset tables
execute as @e[tag=cc.ft.table] at @s run function cchesed:bft/block/remove