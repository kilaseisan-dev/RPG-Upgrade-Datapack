# rpg/upgrade/def
# DEF upgrade: consumes 1 emerald, increases def by 1, cap 20
execute if score @s def matches 20.. run tellraw @s [{"text":"[Upgrade] DEF already at maximum (20).","color":"gold"}] 
execute unless entity @s[nbt={Inventory:[{id:"minecraft:emerald"}]}] run tellraw @s [{"text":"[Upgrade] You need at least 1 emerald to upgrade.","color":"red"}] 
# Remove emerald
clear @s minecraft:emerald 1
# Add DEF
scoreboard players add @s def 1
# Clamp
execute if score @s def matches 21.. run scoreboard players set @s def 20
# Cooldown
scoreboard players set @s upgrade_cd 20
# Update attributes
function rpg:update_player_attributes
# Feedback
tellraw @s [{"text":"[Upgrade] DEF +1 applied. Current DEF: ","color":"green"},{"score":{"name":"@s","objective":"def"},"color":"gold"}]
