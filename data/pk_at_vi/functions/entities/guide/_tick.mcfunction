#> pk_at_vi:entities/guide/_tick

# Set score
scoreboard players operation $temp pk.at_vi.tempted_id = @s pk.at_vi.tempted_id

# Remove potential milk bucket
item replace entity @s weapon.mainhand with air

# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
# Search linked entities
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

# Search linked tempted entity
scoreboard players set $found pk.temp 0
execute as @e[type=#pk_at_vi:venal,tag=pk.at_vi.tempted,predicate=pk_at_vi:scores/tempted_id/match_temp,limit=1,distance=..2] store success score $found pk.temp run tag @s add pk.current.tempted
# @return stop if no linked tempted entity has been found
execute if score $found pk.temp matches 0 run return run function pk_at_vi:entities/guide/stop {run_animations:"true"}

# Search linked tempting entity
scoreboard players set $found pk.temp 0
#   Pickup
execute if entity @s[tag=pk.at_vi.mode.pickup] store success score $found pk.temp run tag @e[type=item,tag=pk.at_vi.pickable,predicate=pk_at_vi:scores/tempting_id/match_temp,limit=1,distance=..10] add pk.current.tempting
#   Follow
execute if entity @s[tag=pk.at_vi.mode.follow] store success score $found pk.temp run tag @a[predicate=pk_at_vi:hold/any_hand/tempting_item,predicate=pk_at_vi:scores/tempting_id/match_temp,limit=1,distance=..10] add pk.current.tempting
# @return stop if no linked tempting entity has been found
execute if score $found pk.temp matches 0 run return run function pk_at_vi:entities/guide/stop {run_animations:"true"}

# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
# Update entities
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

# Mark current entity
tag @s add pk.current.guide

# Make it follow the tempting entity's location
data modify storage pk:common temp.guide_target set value [I;0,0,0]
data modify storage pk:common temp.tempting_pos set from entity @e[type=#pk_at_vi:tempting,tag=pk.current.tempting,distance=..10,limit=1] Pos
execute store result storage pk:common temp.guide_target[0] int 1 run data get storage pk:common temp.tempting_pos[0]
execute store result storage pk:common temp.guide_target[1] int 1 run data get storage pk:common temp.tempting_pos[1]
execute store result storage pk:common temp.guide_target[2] int 1 run data get storage pk:common temp.tempting_pos[2]
data modify entity @s wander_target set from storage pk:common temp.guide_target

# Tp tempted entity on guide facing tempting entity
execute at @s run tp @e[type=#pk_at_vi:venal,tag=pk.current.tempted,distance=..2,limit=1] ~ ~ ~
data modify entity @e[type=#pk_at_vi:venal,tag=pk.current.tempted,distance=..2,limit=1] Rotation[0] set from entity @s Rotation[0]

# If pickup mode, trigger event if the venal entity is close enough from the target
execute if entity @s[tag=pk.at_vi.mode.pickup] if entity @e[type=item,tag=pk.current.tempting,distance=..2.5,limit=1] run function pk_at_vi:entities/guide/pickup_reached

# Unmark entities
tag @e[type=#pk_at_vi:venal,tag=pk.current.tempted,distance=..2,limit=1] remove pk.current.tempted
tag @e[type=#pk_at_vi:tempting,tag=pk.current.tempting,distance=..10,limit=1] remove pk.current.tempting
tag @s remove pk.current.guide