# Add the current tag
tag @s add pk_vfpl_current_guiding_entity

# Check relative venal entity
function pk_vfpl:common/guiding_entity/check_relative_venal_entity

# Check if another guiding entity is close
function pk_vfpl:common/guiding_entity/check_if_another_venal_entity_close

# Check relative item
# - Find
scoreboard players set %pk_vfpl_linked_item_found PK_VFPL_Value 0
scoreboard players operation %pk_vfpl_temp PK_VFPL_Link_1 = @s PK_VFPL_Link_1
tag @e[type=item,tag=pk_vfpl_pickup_mode_attractive,distance=..10,predicate=pk_vfpl:link_1_score_matches] add pk_vfpl_current_attractive_item
execute store result score %pk_vfpl_linked_item_found PK_VFPL_Value if entity @e[type=item,tag=pk_vfpl_current_attractive_item,distance=..10]
# - If item still exists
execute if score %pk_vfpl_linked_item_found PK_VFPL_Value matches 1.. if entity @s[tag=!pk_vfpl_stopped] run function pk_vfpl:mode_pickup/guiding_entity/check_target_distance
# - If item doesn't exist anymore
execute if score %pk_vfpl_linked_item_found PK_VFPL_Value matches 0 run function pk_vfpl:mode_pickup/guiding_entity/search_another_attractive_item

# Remove the current tags
tag @e[type=#pk_vfpl:venal_entities,tag=pk_vfpl_current_venal_entity,distance=..1] remove pk_vfpl_current_venal_entity
tag @e[type=item,tag=pk_vfpl_current_attractive_item,distance=..10] remove pk_vfpl_current_attractive_item
tag @s remove pk_vfpl_current_guiding_entity