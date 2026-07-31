RPG Upgrade Datapack for Minecraft Java 1.16.5 (Forge 36.2.34)

Overview

This datapack provides a block-selected upgrade system.

Installation

1. Download or clone this repository.
2. Place this datapack folder into your world's `datapacks` directory.
3. Start the world or run `/reload` in-game.

Usage

- Build an upgrade station:
  - Place a chest.
  - Place a solid block directly above the chest.
  - Attach a STONE_BUTTON to the solid block.
  - Put one selection block item in the chest to designate the station type:
    - Barrier -> Attack (ATK)
    - Structure Block -> Max Health (HP)
    - Jigsaw -> Defense (DEF)
    - Command Block -> Speed (SPD)
    - Structure Void -> Reset (reset all upgrades)
- Stand near the station and press the STONE_BUTTON. The datapack will consume 1 emerald from your inventory and apply the upgrade.

Notes

- Upgrades persist via scoreboards and attributes and will survive logout.
- Uses vanilla emerald as currency; does not modify or interact with Lightman's Currency.
- Default caps (editable in mcfunction files):
  - ATK cap: 100
  - HP cap: 100 (extra HP; base health remains 20)
  - DEF cap: 20
  - SPD cap: 5

Files and structure

- pack.mcmeta
- README.md
- data/minecraft/tags/functions/load.json
- data/minecraft/tags/functions/tick.json
- data/rpg/functions/load.mcfunction
- data/rpg/functions/tick.mcfunction
- data/rpg/functions/__check_positions.mcfunction
- data/rpg/functions/check_button.mcfunction
- data/rpg/functions/process_chest.mcfunction
- data/rpg/functions/update_player_attributes.mcfunction
- data/rpg/functions/apply_speed_effect_player.mcfunction
- data/rpg/functions/upgrade/atk.mcfunction
- data/rpg/functions/upgrade/hp.mcfunction
- data/rpg/functions/upgrade/def.mcfunction
- data/rpg/functions/upgrade/speed.mcfunction
- data/rpg/functions/reset.mcfunction
