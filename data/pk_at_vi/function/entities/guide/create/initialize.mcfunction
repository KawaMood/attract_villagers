#> pk_at_vi:entities/guide/create/initialize
#
# @args
#   id (int) : the tempted_id score value
#   mode (string) : current attraction mode (either follow or pickup) 

# Set tempting id and tempted id scores
scoreboard players operation @s pk.at_vi.tempted_id = $temp pk.at_vi.tempted_id
scoreboard players operation @s pk.at_vi.tempting_id = $temp pk.at_vi.tempting_id

# Update tags
tag @s add pk.at_vi
tag @s add pk.at_vi.guide
tag @s add pk.at_vi.untemptable
$tag @s add pk.at_vi.mode.$(mode)

# Join team
$team join pk.at_vi.no_collision.$(id) @s

# Set data
data merge entity @s {Silent:1b,Invulnerable:true,Offers:{Recipes:[]},attributes:[{id:"scale",base:0.0625}],active_effects:[{id:"invisibility",show_particles:false,duration:-1,amplifier:0}]}