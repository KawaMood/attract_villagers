#> pk_at_vi:settings/mode/pickup/get

# If true
execute unless score $pk.at_vi.settings.mode.pickup pk.value matches 0 run tellraw @s [{"text":"Mode \"","color":"gray"},{"text":"Pickup","color":"yellow"},{"text":"\" is currently set to ","color":"gray"},{"text":"true","color":"yellow"}]
# If false
execute if score $pk.at_vi.settings.mode.pickup pk.value matches 0 run tellraw @s [{"text":"Mode \"","color":"gray"},{"text":"Pickup","color":"yellow"},{"text":"\" is currently set to ","color":"gray"},{"text":"false","color":"yellow"}]