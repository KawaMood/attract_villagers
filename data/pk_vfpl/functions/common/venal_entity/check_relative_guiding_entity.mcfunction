# Add current entity tag
tag @s add pk_vfpl_current_venal_entity

# Relative guiding entity
# - Find
scoreboard players set %pk_vfpl_linked_guiding_entity_found PK_VFPL_Value 0
scoreboard players operation %pk_vfpl_temp PK_VFPL_Link_2 = @s PK_VFPL_Link_2
tag @e[type=#pk_vfpl:guiding_entities,tag=pk_vfpl_guiding_entity,distance=..1,predicate=pk_vfpl:link_2_score_matches] add pk_vfpl_current_guiding_entity
execute store result score %pk_vfpl_linked_guiding_entity_found PK_VFPL_Value if entity @e[type=#pk_vfpl:guiding_entities,tag=pk_vfpl_current_guiding_entity,distance=..1]
# - If guiding entity doesn't exist anymore
execute if score %pk_vfpl_linked_guiding_entity_found PK_VFPL_Value matches 0 run function pk_vfpl:common/venal_entity/lost_relative_guiding_entity

# Remove current entity tag
tag @s remove pk_vfpl_current_venal_entity