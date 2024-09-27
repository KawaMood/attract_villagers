#> pk_at_vi:entities/item/pickable/initialize

# Prepare tempting id score
scoreboard players add $next pk.at_vi.tempting_id 1
scoreboard players operation @s pk.at_vi.tempting_id = $next pk.at_vi.tempting_id

# Set tag
tag @s add pk.at_vi.pickable