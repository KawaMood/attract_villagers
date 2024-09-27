# Start being attracted
execute if entity @s[tag=!pk_vfpl_attracted,tag=!pk_vfpl_checking_loot,predicate=!pk_vfpl:has_vehicle] if entity @e[type=item,tag=pk_vfpl_pickup_mode_attractive,distance=..10] unless entity @s[nbt={NoAI:1b}] run function pk_vfpl:mode_pickup/venal_entity/start_being_attracted

# Checking loot item
execute if entity @s[tag=pk_vfpl_checking_loot] run function pk_vfpl:mode_pickup/venal_entity/check_loot_item/tick

# Check relative guiding entity
execute if entity @s[tag=pk_vfpl_attracted,tag=pk_vfpl_has_init_guiding_entity] run function pk_vfpl:common/venal_entity/check_relative_guiding_entity