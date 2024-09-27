#> pk_at_vi:entities/item/check_schedule
#
# @within function pk_at_vi:_main/load

# Set context to potential venal entities
execute as @e[type=item,tag=!pk.at_vi.checked] run function pk_at_vi:entities/item/check

# Schedule function
schedule function pk_at_vi:entities/item/check_schedule 10t