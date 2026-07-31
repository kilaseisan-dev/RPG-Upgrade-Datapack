execute if score @s hp matches 100.. run tellraw @s [{"text":"[Upgrade] HP boost already at maximum (+100).","color":"gold"}]
execute unless score @s hp matches 100.. run function rpg:upgrade/hp_do
