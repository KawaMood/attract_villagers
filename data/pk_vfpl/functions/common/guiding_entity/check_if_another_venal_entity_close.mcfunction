# Force to stop the current guiding entity if there is another guiding entity too close
# This will prevent guiding entities and their relative attracted villagers to stack on each other since collision rules is removed by the teams
tag @s remove pk_vfpl_stopped
team join PKNoCollision @s
execute if entity @e[type=#pk_vfpl:venal_entities,tag=!pk_vfpl_current_venal_entity,tag=!pk_vfpl_current_guiding_entity,distance=..0.5] run tag @s add pk_vfpl_stopped
team leave @s[tag=pk_vfpl_stopped]