# rpg:reset
# Reset all upgrades for player, consumes 1 emerald
execute unless entity @s[nbt={Inventory:[{id:"minecraft:emerald"}]}] run tellraw @s [{"text":"[Upgrade] You need at least 1 emerald to reset upgrades.","color":"red"}] 
# Remove emerald
clear @s minecraft:emerald 1
# Reset scores
scoreboard players set @s atk 0
scoreboard players set @s hp 0
scoreboard players set @s def 0
scoreboard players set @s spd 0
# Clear speed effect
effect clear @s minecraft:speed
# Update attributes
function rpg:update_player_attributes
# Cooldown
scoreboard players set @s upgrade_cd 20
# Feedback
tellraw @s [{"text":"[Upgrade] All upgrades reset.","color":"yellow"}]
