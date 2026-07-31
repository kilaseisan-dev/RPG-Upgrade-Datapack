execute unless score @s atk matches 100.. run execute unless entity @s[nbt={Inventory:[{id:"minecraft:emerald"}]}] run tellraw @s [{"text":"[Upgrade] You need at least 1 emerald to upgrade.","color":"red"}]
execute unless score @s atk matches 100.. run execute if entity @s[nbt={Inventory:[{id:"minecraft:emerald"}]}] run clear @s minecraft:emerald 1
execute unless score @s atk matches 100.. run execute if entity @s[nbt={Inventory:[{id:"minecraft:emerald"}]}] run scoreboard players add @s atk 1
execute if score @s atk matches 101.. run scoreboard players set @s atk 100
execute unless score @s atk matches 100.. run execute if entity @s[nbt={Inventory:[{id:"minecraft:emerald"}]}] run scoreboard players set @s upgrade_cd 20
execute unless score @s atk matches 100.. run execute if entity @s[nbt={Inventory:[{id:"minecraft:emerald"}]}] run function rpg:update_player_attributes
execute unless score @s atk matches 100.. run execute if entity @s[nbt={Inventory:[{id:"minecraft:emerald"}]}] run tellraw @s [{"text":"[Upgrade] ATK +1 applied. Current ATK: ","color":"green"},{"score":{"name":"@s","objective":"atk"},"color":"gold"}]
