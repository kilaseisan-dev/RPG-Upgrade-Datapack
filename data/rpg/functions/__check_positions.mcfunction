# rpg:__check_positions
# Check surrounding positions for a powered stone_button over a chest and run process_chest positioned at the button
# center
execute if block ~ ~ ~ minecraft:stone_button[powered=true] if block ~ ~-1 ~ minecraft:chest run execute positioned ~ ~ ~ run function rpg:process_chest
# x+1
execute if block ~1 ~ ~ minecraft:stone_button[powered=true] if block ~1 ~-1 ~ minecraft:chest run execute positioned ~1 ~ ~ run function rpg:process_chest
# x-1
execute if block ~-1 ~ ~ minecraft:stone_button[powered=true] if block ~-1 ~-1 ~ minecraft:chest run execute positioned ~-1 ~ ~ run function rpg:process_chest
# z+1
execute if block ~ ~ ~1 minecraft:stone_button[powered=true] if block ~ ~-1 ~1 minecraft:chest run execute positioned ~ ~ ~1 run function rpg:process_chest
# z-1
execute if block ~ ~ ~-1 minecraft:stone_button[powered=true] if block ~ ~-1 ~-1 minecraft:chest run execute positioned ~ ~ ~-1 run function rpg:process_chest
# x+1 z+1
execute if block ~1 ~ ~1 minecraft:stone_button[powered=true] if block ~1 ~-1 ~1 minecraft:chest run execute positioned ~1 ~ ~1 run function rpg:process_chest
# x+1 z-1
execute if block ~1 ~ ~-1 minecraft:stone_button[powered=true] if block ~1 ~-1 ~-1 minecraft:chest run execute positioned ~1 ~ ~-1 run function rpg:process_chest
# x-1 z+1
execute if block ~-1 ~ ~1 minecraft:stone_button[powered=true] if block ~-1 ~-1 ~1 minecraft:chest run execute positioned ~-1 ~ ~1 run function rpg:process_chest
# x-1 z-1
execute if block ~-1 ~ ~-1 minecraft:stone_button[powered=true] if block ~-1 ~-1 ~-1 minecraft:chest run execute positioned ~-1 ~ ~-1 run function rpg:process_chest
