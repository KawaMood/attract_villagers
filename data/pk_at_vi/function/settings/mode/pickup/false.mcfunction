#> pk_at_vi:settings/mode/pickup/false

# Logs
execute if score $pk.at_vi.settings.mode.pickup pk.value matches 0 run tellraw @s [{"text":"Mode \"","color":"red"},{"text":"Pickup","color":"yellow"},{"text":"\" is already set to ","color":"red"},{"text":"false","color":"yellow"}]
execute unless score $pk.at_vi.settings.mode.pickup pk.value matches 0 run tellraw @s [{"text":"Mode \"","color":"gray"},{"text":"Pickup","color":"yellow"},{"text":"\" has been set to ","color":"gray"},{"text":"false","color":"yellow"}]

# Update the setting's value
scoreboard players set $pk.at_vi.settings.mode.pickup pk.value 0