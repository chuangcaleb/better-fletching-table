advancement revoke @s only cchesed:bft/utility/chorus/charge_crossbow

execute if predicate cchesed:bft/mainhand_cb run return run item modify entity @s weapon.mainhand cchesed:bft/chorus_copy_pos

# TODO: switching into the offhand is considered an "inventory change"
# execute if predicate cchesed:bft/valid_charge run
item modify entity @s weapon.offhand cchesed:bft/chorus_copy_pos