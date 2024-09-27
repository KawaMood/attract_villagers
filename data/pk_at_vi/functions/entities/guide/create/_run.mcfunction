#> pk_at_vi:entities/guide/create/_run
#
# @requires storage pk:common temp.args
#   id (int) : the tempted_id score value
#   mode (string) : current attraction mode (either follow or pickup) 

# Summon guide
execute summon wandering_trader run function pk_at_vi:entities/guide/create/initialize with storage pk:common temp.args

# Delay rescaling to hide the guide below the tempted entity while the invisibility effect isn't effective yet on the client-side
# As the venal entities watching process is a cycle (running every 10 ticks) it won't cause any conflict to schedule the rescaling command to 1 tick
schedule function pk_at_vi:entities/guide/create/rescale_schedule 1t replace