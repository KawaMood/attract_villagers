# Summon the guiding entity
summon wandering_trader ~ 1000 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["pk_vfpl_guiding_entity","pk_vfpl_current_guiding_entity","pk_vfpl_exclude"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:2147483647,ShowParticles:0b}],Offers:{Recipes:[]}}

# Init data
execute as @e[type=wandering_trader,tag=pk_vfpl_current_guiding_entity] run function pk_vfpl:common/guiding_entity/init_data

# Wait one tick before placing the guiding entity on the attracted entity to avoid rotation and invisibility effect render issues
schedule function pk_vfpl:common/guiding_entity/one_tick_after_summon_set_context 1t append