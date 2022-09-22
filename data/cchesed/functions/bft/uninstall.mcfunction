# --------------------------------- Uninstall -------------------------------- #

# Remove scoreboards
scoreboard objectives remove cc.ft.raycast_counter
scoreboard objectives remove cc.ft.output_id

scoreboard objectives remove cc.ft.count
scoreboard objectives remove cc.ft.temp
scoreboard objectives remove cc.ft.minimum
scoreboard objectives remove cc.ft.to_subtract
scoreboard objectives remove cc.ft.empty_slots

# Remove tags
tag @e remove cc.ft.processed_rocket

# Reset tables
execute as @e[tag=cc.ft.table] at @s run function cchesed:bft/block/remove