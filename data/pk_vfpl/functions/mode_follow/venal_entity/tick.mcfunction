# Start being attracted
execute if entity @s[tag=!pk_vfpl_attracted,predicate=!pk_vfpl:has_vehicle] if entity @a[predicate=pk_vfpl:mode_follow_player_attractive,distance=..10] unless entity @s[nbt={NoAI:1b}] run function pk_vfpl:mode_follow/venal_entity/start_being_attracted

# Check relative guiding entity
execute if entity @s[tag=pk_vfpl_attracted,tag=pk_vfpl_has_init_guiding_entity] run function pk_vfpl:common/venal_entity/check_relative_guiding_entity