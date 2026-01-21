data remove entity @s interaction
execute if entity @s[tag=DrillOn] run tag @s add DrillHasTag
execute if entity @s[tag=DrillHasTag] run tag @s remove DrillOn
execute if entity @s[tag=!DrillHasTag] run tag @s add DrillOn
execute if entity @s[tag=DrillHasTag] run tag @s remove DrillHasTag
execute if entity @s[tag=DrillOn] at @s run function programmerdrills:toggleon with entity @n[distance=..1,tag=Drill,type=item_display] item.components.minecraft:custom_data
execute if entity @s[tag=!DrillOn] at @s run function programmerdrills:toggleoff with entity @n[distance=..1,tag=Drill,type=item_display] item.components.minecraft:custom_data