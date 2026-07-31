# rpg:check_button
# Only check button positions for players with no cooldown
execute as @a unless score @s upgrade_cd matches 1.. run function rpg:__check_positions
