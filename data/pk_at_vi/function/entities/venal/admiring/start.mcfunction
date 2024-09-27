#> pk_at_vi:entities/venal/admiring/start

# Prepare admiring timer score
scoreboard players set @s pk.at_vi.admiring_timer 40

# Mark entity
tag @s add pk.at_vi.untemptable
tag @s add pk.at_vi.admiring

# Update item in mainhand
item replace entity @s weapon.mainhand from entity @e[type=item,tag=pk.current.tempting,distance=..2.5,limit=1] container.0

# Remove tempting item
kill @e[type=item,tag=pk.current.tempting,distance=..2.5,limit=1]

# Animations
playsound entity.item.pickup neutral @a[x=0] ~ ~ ~ 1 2

# Run the first cycle
function pk_at_vi:entities/venal/admiring/_run