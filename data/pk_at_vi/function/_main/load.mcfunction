#> pk_at_vi:_main/load
#
# Main load

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Storage:
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
# Define storage
#   pk:common: Used within all KawaMood data packs to store public data and temp manipulation
#declare storage pk:common

# Initialize common storages (if needed)
execute unless data storage pk:common installed_datapacks[{}] run data modify storage pk:common installed_datapacks set value []
#   Add current data pack into the data packs storage (if needed)
execute unless data storage pk:common installed_datapacks[{id:"attract_villagers"}] run data modify storage pk:common installed_datapacks append value {name:"Attract Villagers",id:"attract_villagers"}

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Scores:
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
# Define public objectives that are common to each KawaMood data pack:
#   pk.temp only concerns temp values that can be cleared at any time without risks.
#   pk.value is used for fixed values and variable settings, and won't be cleared on uninstallation until there is no KawaMood data pack anymore.
scoreboard objectives add pk.temp dummy
scoreboard objectives add pk.value dummy

# Define private objectives
scoreboard objectives add pk.at_vi.tempted_id dummy
scoreboard objectives add pk.at_vi.tempting_id dummy
scoreboard objectives add pk.at_vi.admiring_timer dummy

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Updates:
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#   Define the data pack's version and run (an) updating process(es) (if needed)
function pk_at_vi:_main/update/_run

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Schedules:
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
# Check item entities
function pk_at_vi:entities/item/check_schedule
# Start watching venal entities
function pk_at_vi:entities/venal/potential/watch_schedule

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Logs:
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
execute unless score $logs.load pk.value matches ..0 run tellraw @a [{"text": "Loaded ","color": "yellow"},{"text":"KawaMood's ","color": "aqua", "bold": true},{"nbt":"installed_datapacks[{id:\"attract_villagers\"}].name", "storage": "pk:common","color": "aqua", "bold": true},{"text": " (V.","color": "aqua"},{"nbt":"installed_datapacks[{id:\"attract_villagers\"}].version", "storage": "pk:common","color": "aqua"},{"text": ")","color": "aqua"},{"text": " successfully"}]