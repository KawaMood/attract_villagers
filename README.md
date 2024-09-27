# **Attract Villagers V.3.0.0**

**Make villagers follow you or a track of emerald items!**

Attract villagers with a track of emeralds or by holding an emerald block to relocated them more easily.  
No need for railroads or rowing a boat on the ground anymore!

**Youtube Video** : https://youtu.be/41PYDpGfxCQ

# ⚠️ This data pack is now outdated

**This version of the data pack is for MC 1.20.5 to 1.20.6**
If you're using a more recent of Minecraft, check other branches of the project, or the main one to get the most update version this data pack is available on.

Note that these versions don't contain all features most recent ones do, and aren't supported anymore. If you're about to use them on a modified version of Minecraft (with plugins or mods), the data pack could not work as intended.

# 🪄Introduction
## What is Attract Villagers?

Relocating villagers may require long railroads, that are themselves annoying to build and remove. Moreover, putting a villager inside a minecart or a boat to move it isn't always easy.  
In order to solve that, this data pack introduces two other methods to attract villagers.
These methods are named **Follow** and **Pickup** modes.
  
## Follow Mode

Players holding an **emerald block** in one of their hands will tempt villagers and wandering traders around them, and they will start following them. It simply replicates the behavior some animals like cows or sheeps would have when the player hold wheat near them.
  
## Pickup Mode

This way is quite similar to the behavior of piglin with gold ingots. Villagers will walk to  **emeralds** around them and will gather them, allowing players to set up kind of emerald items track to attract villagers and wandering traders to a certain point.  
They will keep all emeralds they collect, so this method involves a counterparty for the fact they can be attracted.

# ⚙️Settings

## Toggling Pickup or Follow modes

If you don't like one or the other method, you can simply disable it.

The following commands respectively allow you to **enable**, **disable**, or **get** the current state of each mode. Both modes are **enabled** by default.
  
For the **Follow** mode:
```
/function pk_at_vi:settings/mode/follow/true
/function pk_at_vi:settings/mode/follow/false
/function pk_at_vi:settings/mode/follow/get
```
And the **Pickup** mode:
```
/function pk_at_vi:settings/mode/pickup/true
/function pk_at_vi:settings/mode/pickup/false
/function pk_at_vi:settings/mode/pickup/get
```

# 🦾Technical details

If you're a data pack developer, a server administrator or a map maker, you may be interessted in  these following details:

- Villagers and wandering traders with the `NoAI` NBT set to `true` or riding a vehicle can't be tempted.
- They are attracted within a range of 10 blocks to a tempting source (emerald item or player holding an emerald block).
- If you want to prevent certain villagers or wandering traders to be tempted, you can add the `pk.at_vi.untemptable` [tag](https://minecraft.wiki/w/Commands/tag) to them.
- You can also edit the data pack's [item tags](https://minecraft.wiki/w/Tag#JSON_format) to manage items that can be used for the Follow and Pickup modes. Both files are located in `./data/pk_at_vi/tags/item(s)/<mode>.json`.

# 🪠 Report an issue

If you encountered an issue with this data pack, preferably join the [Discord server](https://discord.com/invite/w8s9XWgN6v), and open a post in the dedicated **#data-pack-issues** channel to describe your problem. Please, don't forget to provide all necessary informations including:
- The Minecraft version you're using.
- The version of the concerned data pack you're using.
- If you're using any modified version like Forge, Paper or Spigot.
- If you do, the plugins or mods you're using that may alter the functioning of data packs.
- The list of other data packs you're using, if you have others.
- A clear description of your issue, and a way to reproduce it.
- If necessary, a video or a screenshot of the issue in game.

# 📌 Other links

Thank you for using Attract Villagers! It makes me happy to know people are enjoying it.
If you want to support its development and the development of other data packs, you can support me on my other social networks: 

- [Youtube](https://www.youtube.com/@KawaMood/)
- [Planet Minecraft](https://www.planetminecraft.com/member/kawamood/)
- Or if you're in a generous mood, I accept donation on [paypal](https://paypal.me/KawaMood) or [buy me a kawa](https://www.buymeacoffee.com/kawamood) (slang term for "coffee")!