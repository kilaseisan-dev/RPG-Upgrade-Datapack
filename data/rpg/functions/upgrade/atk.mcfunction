execute if score @s atk matches 100.. run tellraw @s [{"text":"[Upgrade] ATK is already at maximum (100).","color":"gold"}]
execute unless score @s atk matches 100.. run function rpg:upgrade/atk_do
