# Add the current tag
tag @s add pk_vfpl_current_guiding_entity

# Check relative venal entity
function pk_vfpl:common/guiding_entity/check_relative_venal_entity

# Check if another guiding entity is close
function pk_vfpl:common/guiding_entity/check_if_another_venal_entity_close

# Check relative player
# - Find
scoreboard players set %pk_vfpl_linked_player_found PK_VFPL_Value 0
scoreboard players operation %pk_vfpl_temp PK_VFPL_Link_1 = @s PK_VFPL_Link_1
tag @a[predicate=pk_vfpl:mode_follow_player_attractive,distance=..10,predicate=pk_vfpl:link_1_score_matches] add pk_vfpl_current_attractive_player
execute store result score %pk_vfpl_linked_player_found PK_VFPL_Value if entity @a[tag=pk_vfpl_current_attractive_player,distance=..10]
# - If player still around and attractive
execute if score %pk_vfpl_linked_player_found PK_VFPL_Value matches 1.. run function pk_vfpl:mode_follow/guiding_entity/set_target_position
# - If player is not around or attractive anymore
execute if score %pk_vfpl_linked_player_found PK_VFPL_Value matches 0 run function pk_vfpl:mode_follow/guiding_entity/search_another_attractive_player

# If the guiding entity end up getting a vehicle (usually get stuck in boat or minecart)
execute if entity @s[predicate=pk_vfpl:has_vehicle] run function pk_vfpl:common/guiding_entity/remove

# Remove the current tags
tag @e[type=#pk_vfpl:venal_entities,tag=pk_vfpl_current_venal_entity,distance=..1] remove pk_vfpl_current_venal_entity
tag @a[tag=pk_vfpl_current_attractive_player,distance=..10] remove pk_vfpl_current_attractive_player
tag @s remove pk_vfpl_current_guiding_entity