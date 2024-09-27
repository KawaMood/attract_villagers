# **Attract Villagers V.2.1.4**

**Make villagers follow you or a track of emerald items!**

Attract villagers with a track of emeralds or by holding an emerald block to relocated them more easily.  
No need for railroads or rowing a boat on the ground anymore!

**Youtube Video** : https://youtu.be/LU70EH8Lu7E 

# ⚠️ This data pack is now outdated

**This version of the data pack is for MC 1.20.2 to 1.20.4**  
If you're using a more recent of Minecraft, check other branches of the project, or the main one to get the most update version this data pack is available on. 

Note that these versions don't contain all features most recent ones do, and aren't supported anymore.
If you're about to use them on a modified version of Minecraft (with plugins or mods), the data pack could not work as intended.

# 🪄Introduction
## What is Attract Villagers?

Relocating villagers may require long railroads, that are themselves annoying to build and remove. Moreover, putting a villager inside a minecart or a boat to move it isn't always easy.  
In order to solve that, this data pack introduces two other methods to attract villagers.
These methods are named **Follow** and **Pickup** modes. You can enable one or the other, but can't use both simultaneously on this version (Note: this is possible after V.3).
  
## Follow Mode

Players holding an **emerald block** in one of their hands will tempt villagers and wandering traders around them, and they will start following them. It simply replicates the behavior some animals like cows or sheeps would have when the player hold wheat near them. This is the mode that is used by default. 
  
## Pickup Mode

This way is quite similar to the behavior of piglin with gold ingots. Villagers will walk to  **emeralds** around them and will gather them, allowing players to set up kind of emerald items track to attract villagers and wandering traders to a certain point.  
They will keep all emeralds they collect, so this method involves a counterparty for the fact they can be attracted.

# ⚙️Settings

## Switch the attraction mode to Pickup or Follow

To switch to the **Follow** mode (default mode), you can run the following command:
```
/function pk_vfpl:commands/mode_set_follow
```
To switch to the **Pickup** mode, you can run the following command:
```
/function pk_vfpl:commands/mode_set_pickup
```

# 🦾Technical details

If you're a data pack developer, a server administrator or a map maker, you may be interessted in  these following details:

- Villagers and wandering traders with the `NoAI` NBT set to `true` or riding a vehicle can't be tempted.
- They are attracted within a range of 10 blocks to a tempting source (emerald item or player holding an emerald block).
- If you want to prevent certain villagers or wandering traders to be tempted, you can add the `pk_vfpl_exclude` [tag](https://minecraft.wiki/w/Commands/tag) to them.
- You can also edit the data pack's [item tags](https://minecraft.wiki/w/Tag#JSON_format) to manage items that can be used for the Follow mode. Both files are located in `./data/pk_vfpl/tags/items/follow_mode_attractive.json`.

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
