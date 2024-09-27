# Remove attracted tags the venal entity and start the "checking loot" behavior
tag @s remove pk_vfpl_attracted
tag @s remove pk_vfpl_has_init_guiding_entity
tag @s add pk_vfpl_checking_loot
scoreboard players set @s PK_VFPL_Value 40
data modify entity @s NoAI set value 1b
item replace entity @s weapon.mainhand with emerald
data modify entity @s Rotation[1] set value 45f