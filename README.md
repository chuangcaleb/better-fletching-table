# Better Fletching Table

> Adds a GUI to Fletching Tables, along with custom Arrows and items!

![cover-img](./bft-cover.jpeg)

---

## Motivation

The Villager workstations all got GUIs: the Smithing Table, the Cartography Table, the Grindstone, even the Loom. Even the Composter, useless as it is, has some functionality as a Bone Meal source for Peaceful Mode.

Except the **Fletching Table**. My poor boy.

Besides that, **Minecraft's ranged projectiles mechanics, tier progression and options are very shallow and limited**. You always only go for a maxed Power enchanted Bow with regular arrows just to pick up the quick and safe KO on mobs. No one practically crafts or mains the crossbow given the choice. The other arrow types are of such **inconsequential effects** that no one bothers to craft them, so they just smacked a band-aid on the symptom by liberally providing Spectral Arrows and Tipped Arrows from Piglin/Villager Trading.

## Design

To introduce interesting ranged combat mechanics, we must first introduce a way to obtain them. Silly vanilla crafting doesn't allow NBT outputs, so we'll have to make our own custom GUI!

**The new Fletching Table GUI is a familiar 3x3 crafting grid** that allows us to craft all the new special custom items.

The new Arrow types should give **wider options of meaningful choices** for the player to choose, whilst requiring materials that are not necessarily plentiful, but an adventure itself to obtain. The **Rockets ammunition and Piercing buff** should give players a reason to use the Crossbow. **Improving on old boring mechanics** and **introducing new utility items** will force players to rethink their style of play and come up with creative new strategies!

This data pack was designed to work alongside my other data pack, [Cycle Offhand Arrows](https://github.com/chuangcaleb/cycle-offhand-arrows), which allows you to **cycle through arrow types in the offhand slot by using your offhand key whilst holding a Bow or Crossbow**! ﻿I heavily advocate this utility data pack in general for any world!

---

## Cross/Bow Enchantments Rework

### Power Enchantment Rework

> Power accelerates your arrows' velocity

The vanilla Bow enchantment to always get is Power. Just like Sharpness, it's a flat simple damage increase, who doesn't want that? That's BORING. Power also makes combat boring once you start two-shotting every 10-heart mob.

WIth this data pack, Power works differently; **a Power bow now makes your arrows fly *faster*.**

This opens up a very different playstyle compared to Crossbows, or even vanilla Bows. The difference is most noticeable on partially-charged shots; a floppy Power V Bow on weakest charge flies as fast as a fully-charged Power I Bow!

And, with a similar damage output, people may opt for the Crossbow now! All without completely scraping the Power enchantment, but instead recontextualizing it.

The damage an arrow deals is calculated by the `damage` NBT as well as its velocity on impact. Since we are going to scale up the values of initial velocity, we have to scale down the `damage` NBT of Power arrows.

| power level | speed multiplier | `damage` initial/vanilla | `damage` target (w/o speed) |
| ---- | ---- | ---- | ---- |
| 0 | 1.0 | 2.0 | 2.00 |
| 1 | 1.2 | 3.0 | 2.40 |
| 2 | 1.5 | 3.5 | 2.65 |
| 3 | 1.9 | 4.0 | 2.90 |
| 4 | 2.4 | 4.5 | 3.15 |
| 5.. | 3.0 | 5.0 | 3.40 |

Yet, I recognize that increased arrow damage is important because you barely take any damage in full Diamond/Netherite from Arrow from a regular-damage-unenchanted Bow. As you can see, Power V will still do much more damage than a Power I Arrow. So, still try to get higher levels of Power. But a Power V bow isn't going to hit like a truck.

Credit: I'm copying all these amazing ideas. I saw this idea on a Data Pack on planetminecraft years ago, titled something like "Acceleration — an enchantment that makes your arrows go faster!" It was an amazing idea and I tried hard but can't find it. So I had to code it from scratch. Took me a week. Please help claim the credits if anyone finds it!

### Piercing Enchantment Rework

> Piercing makes arrows go through blocks

Nobody gets the Crossbow because of its lame enchantments. Namely, the Piercing enchantment. It's supposed to be to Crossbows what Power is to Bows. But it never took off. You are more likely to fight 1v1s, so flat Power damage makes more sense; and even in a crowd of mobs/players, you just run until you pick them off one-by-one.

But, I came across [AKA__Fox](https://www.planetminecraft.com/member/aka__fox)'s [Piercing Arrows Can Go Through Blocks Data Pack](https://www.planetminecraft.com/data-pack/piercing-arrows-can-go-though-blocks). Wow.

This gives Piercing such an amazing and unique use case, especially in PVP when players hide behind blocks. It can work especially well with Spectral Arrows' glowing. It scales and pierces more blocks according to the Piercing level. On top of being able to pierce through Shields, it gives one more a reason to use Crossbows for their Piercing enchantment! Imagine an enemy hiding behind a wall, but you shoot him with a Piercing-enchanted Spectral Arrow, highlighting his location and movements.

I want to just wholesale rip it off. So I asked for permission, then I did.

If you liked this particular feature and found it interesting, please send that Data Pack some Diamonds and Hearts, because I literally just ripped off the entire mechanic. But my Data Pack is made so much more complete with it.

#### Piercing — Caveats

> TL;DR the system implemented for this isn't perfect with data packs, but should work 95% of the time.

Because of how entities and hitboxes work, there is one issue/bug. If an entity/player stands right up against the block that is being pierced, the piercing arrow will not hit them but instead will go/"phase" through them.

The piercing arrow gets teleported right out the opposite side of that block but inside the entity/player hitbox. Since the piercing arrow starts the tick being inside the hitbox already, it doesn't count as a collision. You can try this out for yourself: trigger an arrow-loaded dispenser facing you. Of course, you get hit by the arrows, but if you stand right up against the dispenser... the arrows go through you. It's a weird Minecraft bug. But this is the best we can do, imo this feature should be vanilla!

---

## The Fletching Table

A complete overhaul of the vanilla block, placing a Fletching Table will now spawn a mini-Crafting-Table on the top face of the vanilla Fletching Table block. Shift+Right-Click to open the Fletching Table GUI, and breaking the block will drop it like any other block.

The Fletching(?)/Crafting interface works beautifully — it has multiplication of your materials up till an output stack of 64, with a coefficient according to the recipe. You can even Shift-Click the output to craft the whole stack! Output items are spawned on top of the table.

### Fletching Table — Notes

I've also disabled regular crafting for the Cross/Bow/Spectral/Arrow/Target items, locking them behind the progression wall of a very cheap two Planks and two Flint (this can be disabled).

Hint: You can Shift+Right-Click to place a regular vanilla Fletching Table without the GUI and tracking entities, if you want to use it as a decorative block!

Naturally generated Fletching Tables will not have the mini-Crafting-Table on the top face, and will act like vanilla Fletching Tables. Conversion to the custom Fletching Table only occurs when placing a Fletching Table block, so you can break the naturally generated Fletching Tables first and place them!

Since the custom Fletching Table actually uses an invisible Llama as its GUI behind-the-scenes, simply right-clicking it will cause you to mount it. Awkward. You will be automatically dismounted with commands. Just remember to Shift+Right-Click!

And I guess if you want, since it is technically not a GUI but an Inventory, you could store stuff in the Fletching Table. Don't forget to pick up after yourselves!

---

### Fire-Charged Arrow

> Shoot your own Blaze Fireballs!

Blaze Fireballs are such a cool projectile, having the ability to set blocks on fire from a distance (lighting up caves?), setting mobs on fire, as well as light up TNT remotely.

Flaming Arrow, a new arrow, is crafted with a Fire Charge in place of the Flint (that is, 1 Fire Charge + 1 Stick + 1 Feather → 2 Flaming Arrow).

Due to it being unfairly spammable with Bows, it's designed that regular bows will only shoot out the Tipped Arrow form. You must use a crossbow.

For now, Piercing Blaze Fireballs are not a thing, it would be really cool if it were. But Multishot, though....

### Phantom Arrow

> Antigravity arrows with Piercing II

The gimmick is simple: the Phantom Arrow is unaffected by gravity.

Furthermore, on top of the Piercing enchantment rework, I thought to just add on the Piercing enchantment/NBT to Phantom Arrows! Phantom Arrows get automatic Piercing II. Now you can shoot Piercing arrows from bows that can penetrate multiple enemies AND hit through shields AND go through blocks!

The Phantom Arrow is crafted by replacing the Feather in the typical Arrow recipe shape with a Phantom Membrane (1 Flint + 1 Stick + 1 Phantom Membrane → 2 Phantom Arrows). They come in multiples of 2, since Phantom Membranes should be hard to come by, but they are very useful! If players want to use this unique arrow type and have Phantom Arrows in bulk, they will need to farm Phantoms!

The Phantom Arrow is an arrow brought forward from the old Improved Fletching Tables data pack. There are a variety of applications, but it's generally easier to hit any target, especially precisely hitting long-distance shots or evasive enemies, without needing to account for gravity.

### TNT Rocket

> A Firework Rocket that explodes with a TNT blast

Ah yes, everyone loves explosions. Of course I added a ranged explosive option!

TNT Rockets are crafted from 1 Firework Rocket (must have at least one Large Ball pattern) + 1 TNT → 1 TNT Rocket! Just point, shoot, and watch the particles and blocks explode with the equivalent firepower of a TNT block!

I made the choice to not have explosive arrows because there are already so many arrow types, plus since Bows cannot shoot Firework Rockets, this provides another incentive for players to use the Crossbow! I have also required a Large Ball pattern on the Firework Rocket to make it slightly more expensive/tedious; besides, the firework explosion on impact adds to the flair!

I have also made them unstackable/stacks of 1. This is because it is wayyy to OP to carry multiple stacks of 64 bazooka rockets. I'd like them to stack to 4 ideally, but data packs require so many workarounds for inventory stack limitation. Also, a Multishot Crossbow will only shoot 1 TNT Rocket from the middle projectile slot instead of 3.

### Light Underwater Missile

> Low-cost projectiles for underwater combat!

After making TNT Rockets relatively expensive, I've also added Light Underwater Missiles: they are cheap TNT Rockets that are meant for underwater combat!

These are crafted very cheap with 1 Gunpowder + 1 Kelp + 1 Dried Kelp → 1 Light Underwater Missile. They have an ExplosionPower of 3, but only when it explodes underwater. If it explodes elsewhere, it fizzles and drops itself as an item. However, these Missiles stack up to 64 and unlike Arrows, they are not affected by gravity in water, so you could spend them lavishly just like how you can spam cheap regular Arrows on land!

### Target Block

Target blocks have their crafting recipe moved over to the Fletching Table, since they are arrow/shooting-related. As an added utility, you can use Dried Kelp Blocks in the place of Hay Blocks to craft Target blocks!

---

### Vanilla Arrows

> Minor Tweaks to vanilla arrows

Regular arrows are unchanged, they just have to be crafted through the Fletching Table instead of the Crafting Table.

Spectral Arrows have their recipe simplified from 1 Arrow surrounded by 4 Glowstone → 2 Spectral Arrows (Seriously, have you ever used this recipe?) to 1 Arrow + 1 Glowstone → 1 Spectral Arrow. To encourage the use of Spectral Arrows, glowing mobs now always drop 1 (extra) Glowstone Dust upon death if killed by a player, so they can craft even more Spectral Arrows.

### Credits

Large credit to and permission granted by [Avexus02](https://www.planetminecraft.com/member/avexus02/)'s [HeartDrops Data Pack](https://www.planetminecraft.com/data-pack/heartdrops/), to completely use its drop-item-at-mob-on-death code, unchanged! I spent a whole day trying to figure out how to do this. Thanks.

[HeDeAnTheonlyone/Taglib: A tags library for minecraft data packs](https://github.com/HeDeAnTheonlyone/Taglib) has made tagging super convenient!

---

### Final notes

Vertical arrow crafting recipes can only use the middle column of the 3x3 Fletching Table crafting grid, and not the left nor right columns. It's just a bit of optimization that slightly reduces computations, a logical trade-off imo, because who even crafts arrows in the left or right columns, right, hahahaha...

This is a complete rework of my previous [Improved Fletching Tables Data Pack](https://www.planetminecraft.com/data-pack/improved-fletching-tables/), and the two data packs are not meant to be compatible. Please uninstall the old data pack before using this one.

Reminder: this data pack was designed to work alongside my other data pack, [Cycle Offhand Arrows](https://github.com/chuangcaleb/cycle-offhand-arrows/), which allows you to **cycle through arrow types in the offhand slot by using your offhand key whilst holding a Bow or Crossbow**! With all these new arrows and improved bow mechanics, you will need this utility data pack!
