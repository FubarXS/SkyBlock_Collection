# check if the mob should drop an item
# @s = player that just hit a mob with a iron chestplate
# located at @s
# run from advancement skyvoid_additions:armor_chipping/iron

advancement revoke @s only skyvoid_additions:armor_chipping/iron
execute if predicate skyvoid_additions:armor_chipping/drop_chance positioned ^ ^ ^2.5 as @e[distance=..3,predicate=skyvoid_additions:armor_chipping/wearing_iron,nbt={HurtTime:10s}] run function skyvoid_additions:mechanics/armor_chipping/break_armor/iron
