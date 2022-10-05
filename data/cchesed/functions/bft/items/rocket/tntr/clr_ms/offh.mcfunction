item replace entity @e[tag=cc.ft.tntr_temp,limit=1] weapon.mainhand from entity @s weapon.offhand


data remove entity @e[tag=cc.ft.tntr_temp,limit=1] HandItems[0].tag.ChargedProjectiles[0]
data remove entity @e[tag=cc.ft.tntr_temp,limit=1] HandItems[0].tag.ChargedProjectiles[1]


item replace entity @s weapon.offhand from entity @e[tag=cc.ft.tntr_temp,limit=1] weapon.mainhand