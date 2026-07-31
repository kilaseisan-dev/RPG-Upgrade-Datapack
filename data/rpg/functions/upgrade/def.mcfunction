execute if score @s def matches 20.. run tellraw @s [{"text":"[Upgrade] DEF already at maximum (20).","color":"gold"}]
execute unless score @s def matches 20.. run function rpg:upgrade/def_do
