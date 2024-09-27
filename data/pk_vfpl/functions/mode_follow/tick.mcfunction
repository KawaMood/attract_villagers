# Watch venal entities
execute as @e[type=#pk_vfpl:venal_entities,tag=!pk_vfpl_guiding_entity,tag=!pk_vfpl_exclude] at @s run function pk_vfpl:mode_follow/venal_entity/tick

# Watch guiding entities
execute as @e[type=#pk_vfpl:guiding_entities,tag=pk_vfpl_guiding_entity,tag=pk_vfpl_init] at @s run function pk_vfpl:mode_follow/guiding_entity/tick