execute unless entity @s[nbt={Inventory:[{id:"minecraft:emerald"}]}] run tellraw @s [{"text":"[Upgrade] You need at least 1 emerald to upgrade.","color":"red"}]
execute if entity @s[nbt={Inventory:[{id:"minecraft:emerald"}]}] run clear @s minecraft:emerald 1
execute if entity @s[nbt={Inventory:[{id:"minecraft:emerald"}]}] run scoreboard players add @s spd 1
execute if score @s spd matches 6.. run scoreboard players set @s spd 5
execute if entity @s[nbt={Inventory:[{id:"minecraft:emerald"}]}] run scoreboard players set @s upgrade_cd 20
execute if entity @s[nbt={Inventory:[{id:"minecraft:emerald"}]}] run function rpg:apply_speed_effect_player
execute if entity @s[nbt={Inventory:[{id:"minecraft:emerald"}]}] run tellraw @s [{"text":"[Upgrade] Speed level increased. Current SPD: ","color":"green"},{"score":{"name":"@s","objective":"spd"},"color":"gold"}]
