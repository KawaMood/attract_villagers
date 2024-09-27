# Set mode
scoreboard players set %pk_vfpl_mode PK_VFPL_Value 1

# Reset relative entities mechanics
execute as @e[type=#pk_vfpl:guiding_entities,tag=pk_vfpl_guiding_entity] run function pk_vfpl:common/guiding_entity/remove

# Logs
tellraw @s {"text":"Mode set on: Pickup","color":"yellow"}