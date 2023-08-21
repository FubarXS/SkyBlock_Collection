# ray cast to find dispenser
# @s = player that placed a dispenser
# located at @s anchored eyes positioned ^ ^ ^0.X where X = step count
# run from skyvoid_additions:mechanics/amethyst_geode_creation/summon_marker/placed_dispenser

# check block
execute store success score $found skyvoid_additions align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ dispenser unless entity @e[tag=smithed.block,distance=..0.5,limit=1] run function skyvoid_additions:mechanics/amethyst_geode_creation/summon_marker/summon_dispenser_marker

# runs the loop again
scoreboard players remove $ray skyvoid_additions 1
execute unless score $found skyvoid_additions matches 1 if score $ray skyvoid_additions matches 1.. positioned ^ ^ ^0.1 run function skyvoid_additions:mechanics/amethyst_geode_creation/summon_marker/dispenser_ray
