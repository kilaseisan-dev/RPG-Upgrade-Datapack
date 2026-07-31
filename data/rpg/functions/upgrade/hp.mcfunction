# rpg/upgrade/hp
# HP upgrade: consumes 1 emerald, increases hp score by 1 (1 HP = 0.5 heart), cap default 100
execute if score @s hp matches 100.. run tellraw @s [{"text":"[Upgrade] HP boost already at maximum (+100).","color":"gold"}] 
execute unless entity @s[nbt={Inventory:[{id:"minecraft:emerald"}]}] run tellraw @s [{"text":"[Upgrade] You need at least 1 emerald to upgrade.","color":"red"}] 
# Remove emerald
clear @s minecraft:emerald 1
# Add HP
scoreboard players add @s hp 1
# Clamp
execute if score @s hp matches 101.. run scoreboard players set @s hp 100
# Cooldown
scoreboard players set @s upgrade_cd 20
# Update attributes
function rpg:update_player_attributes
# Feedback
tellraw @s [{"text":"[Upgrade] +1 HP applied. Current extra HP: ","color":"green"},{"score":{"name":"@s","objective":"hp"},"color":"gold"}]
