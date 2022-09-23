from string import Template
import subprocess


def write_to_clipboard(output):
    process = subprocess.Popen(
        'pbcopy', env={'LANG': 'en_US.UTF-8'}, stdin=subprocess.PIPE)
    process.communicate(output.encode('utf-8'))


def offset_index(val):
    if val <= 2:
        return val + 2
    elif val >= 6:
        return val + 6
    else:
        return val + 4


output_strt = 'execute if data entity @s ${has} ${hasnt} run function cchesed:bft/recipe/'

output_t = Template(output_strt)

slots = [
    "",
    "gunpowder",
    "",
    "gunpowder",
    "target",
    "gunpowder",
    "",
    "gunpowder",
    "",
]

# func = "arrow"


has_str = "{Items:[" + \
    ",".join([f'{{Slot:{offset_index(i)}b,id:"minecraft:{v}"}}'
              for i, v in enumerate(slots)
              if v != ""]) + "]}"

hasnt_str = " ".join(
    [f'unless data entity @s {{Items:[{{Slot:{offset_index(i)}b}}]}}'
     for i, v in enumerate(slots)
     if v == ""])


out = output_t.substitute(has=has_str, hasnt=hasnt_str)

print(out)

write_to_clipboard(out)
