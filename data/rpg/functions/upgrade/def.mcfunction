execute unless score @s def matches 20.. run execute unless entity @s[nbt={Inventory:[{id:"minecraft:emerald"}]}] run tellraw @s [{"text":"[Upgrade] You need at least 1 emerald to upgrade.","color":"red"}]
execute unless score @s def matches 20.. run execute if entity @s[nbt={Inventory:[{id:"minecraft:emerald"}]}] run clear @s minecraft:emerald 1
execute unless score @s def matches 20.. run execute if entity @s[nbt={Inventory:[{id:"minecraft:emerald"}]}] run scoreboard players add @s def 1
execute if score @s def matches 21.. run scoreboard players set @s def 20
execute unless score @s def matches 20.. run execute if entity @s[nbt={Inventory:[{id:"minecraft:emerald"}]}] run scoreboard players set @s upgrade_cd 20
execute unless score @s def matches 20.. run execute if entity @s[nbt={Inventory:[{id:"minecraft:emerald"}]}] run function rpg:update_player_attributes
execute unless score @s def matches 20.. run execute if entity @s[nbt={Inventory:[{id:"minecraft:emerald"}]}] run tellraw @s [{"text":"[Upgrade] DEF +1 applied. Current DEF: ","color":"green"},{"score":{"name":"@s","objective":"def"},"color":"gold"}]
