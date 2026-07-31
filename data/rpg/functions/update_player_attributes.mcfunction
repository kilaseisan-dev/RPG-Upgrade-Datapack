scoreboard players operation @s tmp = @s hp
scoreboard players add @s tmp 20
execute store result entity @s Attributes[{Name:"generic.maxHealth"}].Base double 1 run scoreboard players get @s tmp
scoreboard players operation @s tmp = @s atk
scoreboard players add @s tmp 1
execute store result entity @s Attributes[{Name:"generic.attackDamage"}].Base double 1 run scoreboard players get @s tmp
execute if score @s def matches 21.. run scoreboard players set @s def 20
scoreboard players operation @s tmp = @s def
execute store result entity @s Attributes[{Name:"generic.armor"}].Base double 1 run scoreboard players get @s tmp
