#> pk_at_vi:entities/venal/admiring/_run

# Decrease admiring timer score
scoreboard players remove @s pk.at_vi.admiring_timer 1

# Update rotation
data modify entity @s Rotation[1] set value 20f

# @return stop if the current entity's admiring timer score reached 0
execute if entity @s[scores={pk.at_vi.admiring_timer=0}] run function pk_at_vi:entities/venal/admiring/stop

# Otherwise continue to cycle the function
schedule function pk_at_vi:entities/venal/admiring/schedule 1t replace