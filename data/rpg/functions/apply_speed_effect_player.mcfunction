# rpg:apply_speed_effect_player
# Clear existing speed
effect clear @s minecraft:speed
# Apply speed based on spd score (1..5). Duration refreshed every tick (5 seconds)
execute as @s if score @s spd matches 5.. run effect give @s minecraft:speed 5 4 true
execute as @s if score @s spd matches 4..4 run effect give @s minecraft:speed 5 3 true
execute as @s if score @s spd matches 3..3 run effect give @s minecraft:speed 5 2 true
execute as @s if score @s spd matches 2..2 run effect give @s minecraft:speed 5 1 true
execute as @s if score @s spd matches 1..1 run effect give @s minecraft:speed 5 0 true
