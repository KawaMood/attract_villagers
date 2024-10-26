#> pk_at_vi:entities/venal/tempted/initialize
#
# @args
#   id (int) : the tempted_id score value
#   mode (string) : current attraction mode (either follow or pickup)

# Set tempted id score
scoreboard players operation @s pk.at_vi.tempted_id = $temp pk.at_vi.tempted_id

# Create team
$team add pk.at_vi.no_collision.$(id)
$team modify pk.at_vi.no_collision.$(id) collisionRule pushOwnTeam
$team join pk.at_vi.no_collision.$(id) @s

# Set tags
tag @s add pk.at_vi.tempted
$tag @s add pk.at_vi.mode.$(mode)

# Animations
playsound entity.villager.celebrate neutral @a[x=0] ~ ~ ~ 1 1
execute if entity @s[tag=!pk.at_vi.mode.pickup] run particle happy_villager ~ ~2 ~ 0.2 0.2 0.2 0 5