Needs to edit properly..but for now:

Crystal Trove is hack that aims to maintain the Gen 2 experience but with QoL, catching all Pokemon infinitely, increased replay value and tougher battles.
It is however an ongoing project..

Project Base: https://github.com/Nayru62/pokecrystal/tree/8.0_Nayrus_Pokedex which was based on the disassembly of Pokémon Crystal.

Recommended RGBDS version: v0.7.0

Recommended Emulator: BGB

This hack will not include:
- New Pokémon.
- The altering of any Pokémon's base stats.
- New moves or edited moves any way or new battle items.
- New Battle Mechanics.

Everything else is fare game.


# **Nayru's Pokedex Project:**

![image](https://raw.githubusercontent.com/Nayru62/Nayru62-Pokecrystal-Tutorials/main/demos/NayrusPokedex_demo_28SEP2023.gif)
![image](https://github.com/Nayru62/Nayru62-Pokecrystal-Tutorials/blob/main/demos/area_page_28SEP2023.png)
![image](https://raw.githubusercontent.com/Nayru62/Nayru62-Pokecrystal-Tutorials/main/demos/evo_page_28SEP2023.png)
![image](https://raw.githubusercontent.com/Nayru62/Nayru62-Pokecrystal-Tutorials/main/demos/pokegear_28SEP2023.png)


*Bundled:* [Idain's](https://github.com/Idain) [Custom Dex Colors](https://github.com/pret/pokecrystal/wiki/Customizable-Pok%C3%A9dex-Color) and [Toggle Shiny Palettes](https://github.com/pret/pokecrystal/wiki/Option-to-show-shiny-colors-in-Pok%C3%A9dex), doesnt impact you if you dont want it.

*REQUIRED:* (bug/design flaw fix about Radio Tower)
- [Unique Mon Icons](https://github.com/pret/pokecrystal/wiki/Add-a-new-party-menu-icon) (or at least adapt to the new Bank structure, actual icons used are irrelevant)
- [Replace StatExp with EVs](https://github.com/pret/pokecrystal/wiki/Replace-stat-experience-with-EVs),
- [Expanded Tilesets to 255](https://github.com/pret/pokecrystal/wiki/Expand-tilesets-from-192-to-255-tiles), 
- my Gen3 Type/Status/Cat Tiles. Pokedex portion must be implemented. Other parts, optional.

FEATURES:  Base stats and info, Move Info, Detailed area info, Evoulation chart, and sprite page showing animated sprites (reflects shiny toggle too).

Move Information: Lvl-Up Moves -> Field Moves (plus lvl learned and/or TM/HM/Move Tutor) -> Egg Moves -> TMs. I have fully functional code commented out to include HMs. But I decided not to since Field Moves serve the same purpse. But, if you've messed with adding or deleting Field Moves, I reccomend scrapping the Field Moves code and restoring the HM code. Please feel free to DM about this if it's an issue. I'm working on better solutions at some point.

AREA Pages: Currently supports Johto/Kanto Walking/grass/surfing encounters plus their swarms. Fishing Rods information is also included. Right now, all it will show you is the relevant Fishing Group Name. In the near future, it will print Route information like the other pages.
To check your local Fishing Group, check your PokeGear.

POKEGEAR: Now shows the detailed name of map you're currently in (based on Map Group & Map Number) and it also reads the map's attribute to see it's fishing group, if it has one.

# **Full List of Features:**
- TODO

# **Known Bugs:**
- TODO

# **Credits List:**

- Qwilfish, Mantine, Kingdra, Octillery, Starmie overworld sprites done by FrenchOrange
- Chansey, Porygon, Lanturn, Seaking overworld sprites done by Megaman-Omega

# **To do List:**

- TODO

# Pokémon Crystal [![Build Status][ci-badge]][ci]

This is a disassembly of Pokémon Crystal:
https://github.com/pret/pokecrystal

To set up the repository, see [INSTALL.md](INSTALL.md).

## See also

- [**FAQ**](FAQ.md)
- [**Documentation**][docs]
- [**Wiki**][wiki] (includes [tutorials][tutorials])
- [**Symbols**][symbols]

You can find us on [Discord (pret, #pokecrystal)](https://discord.gg/d5dubZ3).

For other pret projects, see [pret.github.io](https://pret.github.io/).

[docs]: https://pret.github.io/pokecrystal/
[wiki]: https://github.com/pret/pokecrystal/wiki
[tutorials]: https://github.com/pret/pokecrystal/wiki/Tutorials
[symbols]: https://github.com/pret/pokecrystal/tree/symbols
[ci]: https://github.com/pret/pokecrystal/actions
[ci-badge]: https://github.com/pret/pokecrystal/actions/workflows/main.yml/badge.svg
