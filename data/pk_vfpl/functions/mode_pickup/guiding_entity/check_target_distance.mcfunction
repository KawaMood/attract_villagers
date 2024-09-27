# Check it the item is close enough
# - Unfortunately since the wandering trader stop before reaching the exact position, we need to check for a large offset 
execute if entity @e[type=item,tag=pk_vfpl_current_attractive_item,distance=2.1..10] run function pk_vfpl:mode_pickup/guiding_entity/set_target_position
execute if entity @e[type=item,tag=pk_vfpl_current_attractive_item,distance=..2.1] run function pk_vfpl:mode_pickup/guiding_entity/reaching_target_position