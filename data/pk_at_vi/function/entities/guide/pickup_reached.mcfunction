#> pk_at_vi:entities/guide/pickup_tempting_entity_reached

# Make linked venal entity picks up the reached item and start admiring it
execute as @e[type=#pk_at_vi:venal,tag=pk.current.tempted,distance=..2,limit=1] at @s run function pk_at_vi:entities/venal/admiring/start

# Stop the tempt process
function pk_at_vi:entities/guide/stop {run_animations:"false"}