# Add current entity tag
tag @s add pk_vfpl_current_venal_entity

# Mark the nearest attractive item and the venal entity with current tags
tag @s add pk_vfpl_attracted
tag @e[type=item,tag=pk_vfpl_pickup_mode_attractive,distance=..10,limit=1,sort=nearest] add pk_vfpl_current_attractive_item

# Init current venal entity link score if it doesn't have one yet
execute unless entity @s[scores={PK_VFPL_Link_2=0..}] run function pk_vfpl:common/venal_entity/set_link_id 
# Store link value with current attractive item for the guiding entity
scoreboard players operation %pk_vfpl_temp PK_VFPL_Link_1 = @e[type=item,tag=pk_vfpl_current_attractive_item,distance=..10,limit=1] PK_VFPL_Link_1

# Prepare relative guiding_entity
function pk_vfpl:common/guiding_entity/summon

# Remove all current tags
tag @e[type=item,tag=pk_vfpl_current_attractive_item,distance=..10] remove pk_vfpl_current_attractive_item
tag @s remove pk_vfpl_current_venal_entity