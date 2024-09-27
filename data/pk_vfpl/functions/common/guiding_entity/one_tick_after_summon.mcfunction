# Retrieve the relative attracted entity
tag @s add pk_vfpl_current_guiding_entity
scoreboard players operation %pk_vfpl_temp PK_VFPL_Link_2 = @s PK_VFPL_Link_2
tag @e[type=#pk_vfpl:venal_entities,tag=pk_vfpl_attracted,predicate=pk_vfpl:link_2_score_matches] add pk_vfpl_current_venal_entity

# If not found, remove the guiding entity
execute unless entity @e[type=#pk_vfpl:venal_entities,tag=pk_vfpl_current_venal_entity] run function pk_vfpl:common/guiding_entity/remove
# If found, place the guiding entity on the attracted entity
tp @s @e[type=#pk_vfpl:venal_entities,tag=pk_vfpl_current_venal_entity,limit=1]
execute at @s run tag @e[type=#pk_vfpl:venal_entities,tag=pk_vfpl_current_venal_entity,limit=1,distance=..0.1] add pk_vfpl_has_init_guiding_entity
execute at @s run tag @e[type=#pk_vfpl:venal_entities,tag=pk_vfpl_current_venal_entity,limit=1,distance=..0.1] remove pk_vfpl_current_venal_entity

# Remove NoGravity data
data remove entity @s NoGravity

# Mark as init and remove current tag
tag @s add pk_vfpl_init
tag @s remove pk_vfpl_current_guiding_entity