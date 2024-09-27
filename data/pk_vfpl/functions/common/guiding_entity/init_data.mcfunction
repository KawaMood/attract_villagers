# Set in the team
team join PKNoCollision @s

# Prepare Rotation
execute rotated as @e[type=#pk_vfpl:venal_entities,tag=pk_vfpl_current_venal_entity,team=PKNoCollision,limit=1] run tp @s ~ ~ ~ ~ ~

# Set the link scores
scoreboard players operation @s PK_VFPL_Link_1 = %pk_vfpl_temp PK_VFPL_Link_1
scoreboard players operation @s PK_VFPL_Link_2 = @e[type=#pk_vfpl:venal_entities,tag=pk_vfpl_current_venal_entity,limit=1] PK_VFPL_Link_2

# Remove the current tag
tag @s remove pk_vfpl_current_guiding_entity