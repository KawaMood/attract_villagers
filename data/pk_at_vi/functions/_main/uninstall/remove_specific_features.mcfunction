#> pk_at_vi:_main/uninstall/remove_specific_features

# Clear storage
data remove storage pk:common installed_datapack[{id:"attract_villagers"}]

# Clear scores
scoreboard objectives remove pk.at_vi.tempting_id
scoreboard objectives remove pk.at_vi.tempted_id
scoreboard objectives remove pk.at_vi.admiring_timer