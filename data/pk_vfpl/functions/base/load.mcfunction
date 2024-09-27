# Scores
# - Score used to create relations between entities
scoreboard objectives add PK_VFPL_Link_1 dummy
scoreboard objectives add PK_VFPL_Link_2 dummy
scoreboard objectives add PK_VFPL_Value dummy

# Init mode
# - 0 : Follow mode
# - 1 : Pickup mode
scoreboard players add %pk_vfpl_mode PK_VFPL_Value 0

# Teams
# - No collision
team add PKNoCollision
team modify PKNoCollision collisionRule never

# Data-pack Helper Plus storage definitions
#define storage pk_vfpl:data

# Logs
tellraw @a [{"text":"Loaded ","color":"yellow"},{"text":"PK Attract Villagers","color":"aqua","bold":true},{"text":" successfully","color":"yellow"}]

# Update if the pack was previously installed on an older version
execute if score %pk_vfpl_version PK_VFPL_Value matches ..212 run function pk_vfpl:base/update
scoreboard players set %pk_vfpl_version PK_VFPL_Value 214