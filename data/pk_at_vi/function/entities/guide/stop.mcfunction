#> pk_at_vi:entities/guide/stop
#
# @args
#   run_animations (string) : weather the animations should be run or not. Can be "true" or "false"

# Store tempted id score
scoreboard players operation $temp pk.at_vi.tempted_id = @s pk.at_vi.tempted_id

# Release potential linked tempted entity
$execute as @e[type=#pk_at_vi:venal,tag=pk.at_vi.tempted,predicate=pk_at_vi:scores/tempted_id/match_temp,limit=1] at @s run function pk_at_vi:entities/venal/tempted/stop {run_animations:"$(run_animations)"}

# Remove team (if not already removed by potential linked tempted entity)
data remove storage pk:common temp.args
execute store result storage pk:common temp.args.id int 1 run scoreboard players get @s pk.at_vi.tempted_id 
function pk_at_vi:entities/venal/tempted/remove_team with storage pk:common temp.args

# Unmark potential linked tempting entity
tag @e[type=#pk_at_vi:tempting,tag=pk.current.tempting,limit=1] remove pk.current.tempting

# Remove entity
tp @s ~ -1000 ~
kill @s