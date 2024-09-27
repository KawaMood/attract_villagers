#> pk_at_vi:entities/venal/potential/set_context
#
# @within function pk_at_vi:_main/load

# Set context to potential venal entities
execute as @e[type=#pk_at_vi:venal,tag=!pk.at_vi.tempted,tag=!pk.at_vi.untemptable] at @s run function pk_at_vi:entities/venal/potential/watch

# If the entity is tempted, check if a guide is still near it (in order to prevent potential issue with a kill command or so)
execute as @e[type=#pk_at_vi:venal,tag=pk.at_vi.tempted] at @s unless entity @e[type=#pk_at_vi:guide,tag=pk.at_vi.guide,distance=..2] run function pk_at_vi:entities/venal/tempted/stop {run_animations:"true"}

# Schedule function
schedule function pk_at_vi:entities/venal/potential/watch_schedule 10t