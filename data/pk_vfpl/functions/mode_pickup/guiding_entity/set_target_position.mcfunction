# Set position from item
data modify storage pk_vfpl:data Pos set from entity @e[type=item,tag=pk_vfpl_current_attractive_item,distance=..10,limit=1] Pos
data modify entity @s WanderTarget.X set from storage pk_vfpl:data Pos[0]
data modify entity @s WanderTarget.Y set from storage pk_vfpl:data Pos[1]
data modify entity @s WanderTarget.Z set from storage pk_vfpl:data Pos[2]