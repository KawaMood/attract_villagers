execute store result score %pk_vfpl_temp PK_VFPL_Value run data get entity @s Item.Count
scoreboard players remove %pk_vfpl_temp PK_VFPL_Value 1
execute store result entity @s Item.Count short 1 run scoreboard players get %pk_vfpl_temp PK_VFPL_Value