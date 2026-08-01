RPG Upgrade Datapack for Minecraft Java 1.16.5 (Forge 36.2.34)

Overview

This datapack provides a block-selected upgrade system using a chest + stone button station and consumes emeralds from the player's inventory as currency.

Station selection items (place any of these block items inside the chest to select the station type):
- Barrier -> Attack (ATK)
- Structure Block -> Max Health (HP) (+1 HP per use; 1 HP = 0.5 heart)
- Jigsaw -> Defense (DEF) (increases armor attribute; max 20)
- Command Block -> Speed (SPD) (gives Speed potion effect; max Lv5)
- Structure Void -> Reset (resets all upgrades)

Installation

1. Place this folder into the world's datapacks directory.
2. Start the world or run /reload in-game.

How to build a station

1. Place a chest.
2. Place a solid block directly above that chest.
3. Attach a STONE_BUTTON to the solid block.
4. Place one of the selector block items in the chest to choose the station type.
5. Stand near the button and press it. The datapack will attempt to take 1 emerald from your inventory and apply the upgrade.

Notes

- Upgrades are persistent via scoreboard objectives and are re-applied automatically every tick.
- This datapack uses vanilla emeralds as currency and does not modify or interact with Lightman's Currency or AoA items.
- Default caps:
  - ATK cap: 100
  - HP cap: 100 (extra HP)
  - DEF cap: 20
  - SPD cap: 5
