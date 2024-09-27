#> pk_at_vi:entities/venal/potential/watch

# @return Check if this entity has NoAI:1b or rides a vehicle
execute if entity @s[predicate=pk_at_vi:vehicle/any] run return fail
execute if entity @s[nbt={NoAI:1b}] run return fail

# Mark entity
tag @s add pk.current.venal

# Watch environment
#   Found a pickable tempting entity around
execute unless score $pk.at_vi.settings.mode.pickup pk.value matches 0 as @e[type=item,tag=pk.at_vi.pickable,distance=..10,limit=1,sort=nearest] run function pk_at_vi:entities/venal/potential/tempt {mode:"pickup"}
#   Found a followable tempting entity around
execute unless score $pk.at_vi.settings.mode.follow pk.value matches 0 unless entity @s[tag=pk.at_vi.tempted] as @p[predicate=pk_at_vi:hold/any_hand/tempting_item,distance=..10] run function pk_at_vi:entities/venal/potential/tempt {mode:"follow"}

# Unmark entity
tag @s remove pk.current.venal