# Reduce and check checking loot delay
scoreboard players remove @s PK_VFPL_Value 1
execute if entity @s[scores={PK_VFPL_Value=0}] run function pk_vfpl:mode_pickup/venal_entity/check_loot_item/stop