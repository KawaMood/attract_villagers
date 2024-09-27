#> pk_at_vi:_main/update/_run
#
# Update the current data pack if needed
#
# @writes score $pk.at_vi.version pk.value
#   The data pack's current version score
#
# @writes storage pk:common installed_datapacks[{id:"attract_villagers"}]
#       version: string
#           The data pack's current literal version

scoreboard players set $pk.at_vi.version pk.value 30000
data modify storage pk:common installed_datapacks[{id:"attract_villagers"}].version set value "3.0.0"