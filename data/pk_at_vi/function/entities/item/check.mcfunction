#> pk_at_vi:entities/item/check

# Mark as checked
tag @s add pk.at_vi.checked

# If the item is tempting (pickup mode)
execute if items entity @s container.0 #pk_at_vi:pickable run function pk_at_vi:entities/item/pickable_initialize