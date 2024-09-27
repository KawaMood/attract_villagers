# Watch item entity
execute as @e[type=item,tag=!pk_vfpl_checked,nbt={OnGround:1b}] run function pk_vfpl:mode_pickup/item/check_identity

# Watch venal entities
execute as @e[type=#pk_vfpl:venal_entities,tag=!pk_vfpl_guiding_entity,tag=!pk_vfpl_exclude] at @s run function pk_vfpl:mode_pickup/venal_entity/tick

# Watch guiding entities
execute as @e[type=#pk_vfpl:guiding_entities,tag=pk_vfpl_guiding_entity,tag=pk_vfpl_init] at @s run function pk_vfpl:mode_pickup/guiding_entity/tick