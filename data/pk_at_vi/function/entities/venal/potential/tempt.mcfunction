#> pk_at_vi:entities/venal/potential/attract_pickup
#
# @args 
#   mode (string) : The tempting mode. Can be "pickup" or "follow"
#
# @context the tempting entity at the venal entity

# Prepare tempted_id and templting_id scores
scoreboard players add $next pk.at_vi.tempted_id 1
scoreboard players operation $temp pk.at_vi.tempted_id = $next pk.at_vi.tempted_id
scoreboard players operation $temp pk.at_vi.tempting_id = @s pk.at_vi.tempting_id

# Prepare args
data remove storage pk:common temp.args
$data modify storage pk:common temp.args.mode set value $(mode) 
execute store result storage pk:common temp.args.id int 1 run scoreboard players get $temp pk.at_vi.tempted_id

# Initialize the tempted entity and summon its guide
execute as @e[type=#pk_at_vi:venal,tag=pk.current.venal,distance=..10,limit=1] run function pk_at_vi:entities/venal/tempted/initialize with storage pk:common temp.args
function pk_at_vi:entities/guide/create/_run