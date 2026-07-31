# rpg/upgrade/atk
# Attack upgrade: consumes 1 emerald from player inventory, increases atk by 1, cap default 100
execute if score @s atk matches 100.. run tellraw @s [{"text":"[Upgrade] ATK is already at maximum (100).","color":"gold"}] 
execute unless entity @s[nbt={Inventory:[{id:"minecraft:emerald"}]}] run tellraw @s [{"text":"[Upgrade] You need at least 1 emerald to upgrade.","color":"red"}] 
# Remove 1 emerald
clear @s minecraft:emerald 1
# Add ATK
scoreboard players add @s atk 1
# Clamp
execute if score @s atk matches 101.. run scoreboard players set @s atk 100
# Cooldown
scoreboard players set @s upgrade_cd 20
# Update attributes
function rpg:update_player_attributes
# Feedback
tellraw @s [{"text":"[Upgrade] ATK +1 applied. Current ATK: ","color":"green"},{"score":{"name":"@s","objective":"atk"},"color":"gold"}]
