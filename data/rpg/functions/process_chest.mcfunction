# rpg:process_chest
# Running at the button block position. The chest should be at ~ ~-1 ~.
execute unless block ~ ~-1 ~ minecraft:chest run tellraw @s [{"text":"[RPG Upgrade] No chest found below this station.","color":"red"}] 
# Barrier -> Attack
execute if data block ~ ~-1 ~ Items[{id:"minecraft:barrier"}] run function rpg:upgrade/atk
# Structure Block -> HP
execute if data block ~ ~-1 ~ Items[{id:"minecraft:structure_block"}] run function rpg:upgrade/hp
# Jigsaw -> DEF
execute if data block ~ ~-1 ~ Items[{id:"minecraft:jigsaw"}] run function rpg:upgrade/def
# Command Block -> Speed
execute if data block ~ ~-1 ~ Items[{id:"minecraft:command_block"}] run function rpg:upgrade/speed
# Structure Void -> Reset
execute if data block ~ ~-1 ~ Items[{id:"minecraft:structure_void"}] run function rpg:reset
