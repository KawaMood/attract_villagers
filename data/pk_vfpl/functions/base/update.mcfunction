# Remove unecessary features from 1.0.0
scoreboard objectives remove PK_VFPL_Invulnerable
scoreboard objectives remove PK_VFPL_Delay
forceload remove -30000000 1600

# Remove unecessary features from 2.0.0
scoreboard objectives remove PK_VFPL_Player_Link_Id
scoreboard objectives remove PK_VFPL_Attracted_Link_Id
team remove PKNoCollisionAndNoName

# Remove unecessary features from 2.1.1
data remove storage pk_vfpl:data Version

# Logs
tellraw @a [{"text":"Force update for PK Attractive Villager...","color":"red"}]

# Reload
reload