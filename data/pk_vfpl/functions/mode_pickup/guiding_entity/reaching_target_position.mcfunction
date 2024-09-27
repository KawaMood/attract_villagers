# Make the relative venal entity pick up the target item and remove the guiding entity
playsound minecraft:entity.item.pickup neutral @a[distance=0..] ~ ~ ~ 1 1
playsound minecraft:entity.villager.celebrate neutral @a[distance=0..] ~ ~ ~ 1 1
execute as @e[type=item,tag=pk_vfpl_current_attractive_item,distance=..2.1,limit=1] at @s run function pk_vfpl:mode_pickup/item/data_count_remove_one
execute as @e[type=#pk_vfpl:venal_entities,tag=pk_vfpl_current_venal_entity] run function pk_vfpl:mode_pickup/venal_entity/check_loot_item/start
function pk_vfpl:common/guiding_entity/remove