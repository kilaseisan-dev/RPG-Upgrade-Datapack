# rpg/upgrade/speed
# SPD upgrade: consumes 1 emerald, increases spd by 1, cap 5
execute if score @s spd matches 5.. run tellraw @s [{"text":"[Upgrade] Speed already at maximum (Level 5).","color":"gold"}] 
execute unless entity @s[nbt={Inventory:[{id:"minecraft:emerald"}]}] run tellraw @s [{"text":"[Upgrade] You need at least 1 emerald to upgrade.","color":"red"}] 
# Remove emerald
clear @s minecraft:emerald 1
# Add SPD
scoreboard players add @s spd 1
# Clamp
execute if score @s spd matches 6.. run scoreboard players set @s spd 5
# Cooldown
scoreboard players set @s upgrade_cd 20
# Apply effect immediately
function rpg:apply_speed_effect_player
# Feedback
tellraw @s [{"text":"[Upgrade] Speed level increased. Current SPD: ","color":"green"},{"score":{"name":"@s","objective":"spd"},"color":"gold"}]
