from string import Template

content = "item replace entity @e[tag=cc.ft.quiver_swap,limit=1] weapon.mainhand from entity @s container.${item_slot}\nitem replace entity @s container.${item_slot} from entity @s weapon.mainhand\nitem replace entity @s weapon.mainhand from entity @e[tag=cc.ft.quiver_swap,limit=1] weapon.mainhand"
# content = "execute if data entity @s Inventory[{Slot:${i}b,tag:{cchesed:{bft:{quiver:1b}}}}] run function cchesed:bft/items/quiver/swap/${i}"
content_t = Template(content)

base_dir = "data/cchesed/functions/bft/items/quiver/swap"

content_list = []

for i in range(0, 36):

    # item_slot = i + 9 if (i + 9 < 35) else i - 9

    content_out = content_t.substitute(item_slot=i)
    # content_list.append(content_t.substitute(i=i))

    with open(f"{base_dir}/{i}.mcfunction", 'w+') as file:
        file.write(content_out)

# print("\n".join(content_list))
