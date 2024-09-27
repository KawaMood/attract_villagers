# Common to all modes
item replace entity @e[type=wandering_trader,tag=pk_vfpl_guiding_entity] weapon.mainhand with air

# Mode relative
execute if score %pk_vfpl_mode PK_VFPL_Value matches ..0 run function pk_vfpl:mode_follow/tick
execute if score %pk_vfpl_mode PK_VFPL_Value matches 1.. run function pk_vfpl:mode_pickup/tick