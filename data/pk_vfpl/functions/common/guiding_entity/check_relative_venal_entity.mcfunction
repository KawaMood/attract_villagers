# Check relative venal entity
# - Find
scoreboard players set %pk_vfpl_linked_venal_entity_found PK_VFPL_Value 0
scoreboard players operation %pk_vfpl_temp PK_VFPL_Link_2 = @s PK_VFPL_Link_2
tag @e[type=#pk_vfpl:venal_entities,tag=pk_vfpl_attracted,distance=..1,predicate=pk_vfpl:link_2_score_matches] add pk_vfpl_current_venal_entity
execute store result score %pk_vfpl_linked_venal_entity_found PK_VFPL_Value if entity @e[type=#pk_vfpl:venal_entities,tag=pk_vfpl_current_venal_entity,distance=..1,predicate=!pk_vfpl:has_vehicle]
# - If venal entity still exists and has no vehicle
execute if score %pk_vfpl_linked_venal_entity_found PK_VFPL_Value matches 1.. at @s run tp @e[type=#pk_vfpl:venal_entities,tag=pk_vfpl_current_venal_entity,distance=..1,limit=1] @s
# - If venal entity doesn't exist anymore or get a vehicle
execute if score %pk_vfpl_linked_venal_entity_found PK_VFPL_Value matches 0 run function pk_vfpl:common/guiding_entity/remove