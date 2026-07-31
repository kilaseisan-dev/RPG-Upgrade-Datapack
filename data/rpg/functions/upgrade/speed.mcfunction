execute if score @s spd matches 5.. run tellraw @s [{"text":"[Upgrade] Speed already at maximum (Level 5).","color":"gold"}]
execute unless score @s spd matches 5.. run function rpg:upgrade/speed_do
