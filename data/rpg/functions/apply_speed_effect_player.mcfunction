effect clear @s minecraft:speed
execute as @s if score @s spd matches 5.. run effect give @s minecraft:speed 5 4 true
execute as @s if score @s spd matches 4..4 run effect give @s minecraft:speed 5 3 true
execute as @s if score @s spd matches 3..3 run effect give @s minecraft:speed 5 2 true
execute as @s if score @s spd matches 2..2 run effect give @s minecraft:speed 5 1 true
execute as @s if score @s spd matches 1..1 run effect give @s minecraft:speed 5 0 true
