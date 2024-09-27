# Try to find an attractive item
execute store result score %pk_vfpl_linked_item_found PK_VFPL_Value run tag @e[type=item,tag=pk_vfpl_pickup_mode_attractive,distance=..10,sort=nearest,limit=1] add pk_vfpl_current_attractive_item
# - If found, define the link score and set target position 
execute if score %pk_vfpl_linked_item_found PK_VFPL_Value matches 1.. run scoreboard players operation @s PK_VFPL_Link_1 = @e[type=item,tag=pk_vfpl_current_attractive_item,distance=..10,limit=1] PK_VFPL_Link_1
execute if score %pk_vfpl_linked_item_found PK_VFPL_Value matches 1.. run function pk_vfpl:mode_pickup/guiding_entity/set_target_position
# - Otherwise, remove the current guiding entity
execute if score %pk_vfpl_linked_item_found PK_VFPL_Value matches 0 run function pk_vfpl:common/guiding_entity/remove