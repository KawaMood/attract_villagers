# Change score mode
scoreboard players set %pk_vfpl_mode PK_VFPL_Value 0

# Reset relative entities mechanics
execute as @e[type=#pk_vfpl:guiding_entities,tag=pk_vfpl_guiding_entity] run function pk_vfpl:common/guiding_entity/remove
scoreboard players set @e[type=#pk_vfpl:venal_entities,tag=pk_vfpl_checking_loot] PK_VFPL_Value 0
execute as @e[type=#pk_vfpl:venal_entities,tag=pk_vfpl_checking_loot] run function pk_vfpl:mode_pickup/venal_entity/check_loot_item/stop

# Logs
tellraw @s {"text":"Mode set on: Follow","color":"yellow"}