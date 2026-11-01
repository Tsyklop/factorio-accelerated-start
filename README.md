# Accelerated Start

Start building sooner with an equipped starter armor and a small construction crew.

For **Factorio 2.1**. Space Age is optional.

## Starter kit

Each player receives the kit **once per save** when a character is available:

- Starter modular armor with a **6×6** equipment grid.
- A portable fission reactor, exoskeleton, personal roboport and night vision.
- **10 starter construction robots** that consume no flight or working energy.

The equipment uses standard Factorio equipment and graphics. Existing worn armor is
kept; the starter armor goes into your inventory instead. If no slot is free, make
space and run `/accelerated-start`. The command does not give duplicate kits.

The kit can also be granted when adding the mod to an existing save. Losing the kit
or dying does not reset the once-per-save grant.

## Settings

Open **Settings → Mod settings → Startup**:

| Setting | Default | Effect |
| --- | --- | --- |
| Starter construction robot speed multiplier | 1 | Flight speed from **1× to 100×**, with decimal values. |
| Skip freeplay intro | Off | Skips the standard freeplay introduction. |
| Disable freeplay crashsite | Off | Prevents the starting crashsite in new standard freeplay games. |

Startup changes require a restart. The speed multiplier affects only Accelerated
Start robots, including existing ones after loading. Robot speed research still
applies. Equipment, personal roboport capacity and construction range use normal
game mechanics.

## Compatibility

Install **AcceleratedStart_1.0.0.zip** through the mod portal, or copy it into your
Factorio mods folder. Use either the archive or the source folder, not both.

This mod has its own item and entity names. It is not a drop-in replacement for
FasterStart equipment in existing saves. Choose either this mod or FasterStart to
avoid receiving two starter kits. Multiplayer participants need matching startup
settings and mod versions.

English and Russian translations are included. All publication screenshots use
the English interface.

## Credits

Inspired by [FasterStart by magu5026](https://mods.factorio.com/mod/FasterStart),
which introduced the starter-armor-and-robots idea used here.

Implementation and maintenance: **Tsyklop**.

[Source code](https://github.com/Tsyklop/accelerated-start).

## License

MIT. Factorio graphics and equipment are referenced from the installed base game.
