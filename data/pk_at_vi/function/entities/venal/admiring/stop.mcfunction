#> pk_at_vi:entities/venal/admiring/stop

# Remove tags
tag @s remove pk.at_vi.untemptable
tag @s remove pk.at_vi.admiring

# Update data
item replace entity @s weapon.mainhand with air
data modify entity @s Rotation[1] set value 0f