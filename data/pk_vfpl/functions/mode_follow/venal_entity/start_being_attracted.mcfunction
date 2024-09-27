# Add current entity tag
tag @s add pk_vfpl_current_venal_entity

# Mark the nearest attractive player and the venal entity with current tags
tag @s add pk_vfpl_attracted
tag @p[predicate=pk_vfpl:mode_follow_player_attractive,distance=..10] add pk_vfpl_current_attractive_player

# Init current venal entity link score if it doesn't have one yet
execute unless entity @s[scores={PK_VFPL_Link_2=0..}] run function pk_vfpl:common/venal_entity/set_link_id
# Store link value with current attractive player for the guiding entity
scoreboard players operation %pk_vfpl_temp PK_VFPL_Link_1 = @p[tag=pk_vfpl_current_attractive_player,distance=..10] PK_VFPL_Link_1

# Prepare relative guiding_entity
function pk_vfpl:common/guiding_entity/summon

# Remove all current tags
tag @a[tag=pk_vfpl_current_attractive_player,distance=..10] remove pk_vfpl_current_attractive_player
tag @s remove pk_vfpl_current_venal_entity

# Animations
playsound minecraft:entity.villager.celebrate neutral @a[distance=0..] ~ ~ ~ 1 1
particle minecraft:happy_villager ~ ~2 ~ 0.5 0.5 0.5 1 10