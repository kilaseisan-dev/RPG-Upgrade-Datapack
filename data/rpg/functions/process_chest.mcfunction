execute unless block ~ ~-1 ~ minecraft:chest run tellraw @s [{"text":"[RPG Upgrade] No chest found below this station.","color":"red"}]
execute if data block ~ ~-1 ~ Items[{id:"minecraft:barrier"}] run function rpg:upgrade/atk
execute if data block ~ ~-1 ~ Items[{id:"minecraft:structure_block"}] run function rpg:upgrade/hp
execute if data block ~ ~-1 ~ Items[{id:"minecraft:jigsaw"}] run function rpg:upgrade/def
execute if data block ~ ~-1 ~ Items[{id:"minecraft:command_block"}] run function rpg:upgrade/speed
execute if data block ~ ~-1 ~ Items[{id:"minecraft:structure_void"}] run function rpg:reset
