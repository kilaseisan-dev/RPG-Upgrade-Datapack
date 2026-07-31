# rpg:load
# Initialize scoreboard objectives and announce load
scoreboard objectives add atk dummy ATK
scoreboard objectives add hp dummy HP
scoreboard objectives add def dummy DEF
scoreboard objectives add spd dummy SPD
scoreboard objectives add upgrade_cd dummy UpgradeCooldown
scoreboard objectives add tmp dummy TMP
tellraw @a [{"text":"[RPG Upgrade] Datapack loaded. Place a chest with a selector block and press a stone button above it to upgrade (emerald = currency).","color":"gold"}]
