# rpg:tick
# Decrement cooldowns and check for button presses, update attributes and speed
scoreboard players remove @a[scores={upgrade_cd=1..}] upgrade_cd 1
function rpg:check_button
function rpg:update_player_attributes
function rpg:apply_speed_effect_player
