#> pk_at_vi:settings/mode/follow/true

# Cancel process if setting is already set on the attempted value
execute unless score $pk.at_vi.settings.mode.follow pk.value matches 0 run tellraw @s [{"text":"Mode \"","color":"red"},{"text":"Follow","color":"yellow"},{"text":"\" is already set to ","color":"red"},{"text":"true","color":"yellow"}]
execute if score $pk.at_vi.settings.mode.follow pk.value matches 0 run tellraw @s [{"text":"Mode \"","color":"gray"},{"text":"Follow","color":"yellow"},{"text":"\" has been set to ","color":"gray"},{"text":"true","color":"yellow"}]

# Update the setting's value
scoreboard players set $pk.at_vi.settings.mode.follow pk.value 1

# Force tempted entity to stop following
execute as @e[type=#pk_at_vi:guide,tag=pk.at_vi.guide,tag=pk.at_vi.mode.follow] at @s run function pk_at_vi:entities/guide/stop