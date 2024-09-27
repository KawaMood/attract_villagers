# Try to find an attractive item
execute store result score %pk_vfpl_linked_item_found PK_VFPL_Value run tag @p[predicate=pk_vfpl:mode_follow_player_attractive,distance=..10] add pk_vfpl_current_attractive_player
# - If found, define the link score and set target position 
execute if score %pk_vfpl_linked_item_found PK_VFPL_Value matches 1.. run scoreboard players operation @s PK_VFPL_Link_1 = @p[tag=pk_vfpl_current_attractive_player,distance=..10] PK_VFPL_Link_1
execute if score %pk_vfpl_linked_item_found PK_VFPL_Value matches 1.. run function pk_vfpl:mode_follow/guiding_entity/set_target_position
# - Otherwise, remove the current guiding entity
execute if score %pk_vfpl_linked_item_found PK_VFPL_Value matches 0 run function pk_vfpl:mode_follow/guiding_entity/remove