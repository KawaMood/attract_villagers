#> pk_at_vi:entities/venal/tempted/stop
#
# @args
#   run_animations (string) : weather the animations should be run or not. Can be "true" or "false"

# Prepare args
$data modify storage pk:common temp.run_animations set value "$(run_animations)"

# Remove tags
tag @s remove pk.at_vi.tempted
tag @s remove pk.at_vi.mode.follow
tag @s remove pk.at_vi.mode.pickup
tag @s remove pk.current.tempted

# Remove team
data remove storage pk:common temp.args
execute store result storage pk:common temp.args.id int 1 run scoreboard players get @s pk.at_vi.tempted_id 
function pk_at_vi:entities/venal/tempted/remove_team with storage pk:common temp.args

# Animations
execute if data storage pk:common temp{run_animations:"true"} run playsound entity.villager.no neutral @a[x=0] ~ ~ ~ 1 1