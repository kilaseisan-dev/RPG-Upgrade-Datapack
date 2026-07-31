execute if score @s hp matches 100.. run tellraw @s [{"text":"[Upgrade] HP boost already at maximum (+100).","color":"gold"}]
execute unless score @s hp matches 100.. run execute unless entity @s[nbt={Inventory:[{id:"minecraft:emerald"}]}] run tellraw @s [{"text":"[Upgrade] You need at least 1 emerald to upgrade.","color":"red"}]
execute unless score @s hp matches 100.. run execute if entity @s[nbt={Inventory:[{id:"minecraft:emerald"}]}] run clear @s minecraft:emerald 1
execute unless score @s hp matches 100.. run execute if entity @s[nbt={Inventory:[{id:"minecraft:emerald"}]}] run scoreboard players add @s hp 1
execute unless score @s hp matches 100.. run execute if score @s hp matches 101.. run scoreboard players set @s hp 100
execute unless score @s hp matches 100.. run execute if entity @s[nbt={Inventory:[{id:"minecraft:emerald"}]}] run scoreboard players set @s upgrade_cd 20
execute unless score @s hp matches 100.. run execute if entity @s[nbt={Inventory:[{id:"minecraft:emerald"}]}] run function rpg:update_player_attributes
execute unless score @s hp matches 100.. run execute if entity @s[nbt={Inventory:[{id:"minecraft:emerald"}]}] run tellraw @s [{"text":"[Upgrade] +1 HP applied. Current extra HP: ","color":"green"},{"score":{"name":"@s","objective":"hp"},"color":"gold"}]
