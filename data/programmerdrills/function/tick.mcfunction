# warn-off-file target-selector-no-dimension
scoreboard players add iron DrillTimer 1
scoreboard players add diamond DrillTimer 1
scoreboard players add netherite DrillTimer 1
scoreboard players add power DrillTimer 1
execute as @n[tag=!DroppedDrill,nbt={Item:{id:"minecraft:music_disc_lava_chicken",count:1,components:{"minecraft:custom_data":{"is_drill":true}}},OnGround:1b},type=item] at @s align xyz positioned ~.5 ~ ~.5 unless entity @n[distance=..1, tag=Drill, type=item_display] if block ~ ~ ~ #programmerdrills:drill_air run function programmerdrills:detectdroppeddrill with entity @s Item.components.minecraft:custom_data
execute as @e[tag=Drill,type=item_display] at @s run function programmerdrills:tickdrill with entity @s item.components.minecraft:custom_data
execute as @n[nbt={attack:{}},type=interaction] at @s run function programmerdrills:breakdrill with entity @n[distance=..1,tag=Drill,type=item_display] item
execute as @n[nbt={interaction:{}},tag=DrillHitbox,type=interaction] run function programmerdrills:toggledrill
execute if score iron DrillTimer >= Config_iron DrillTimer run scoreboard players set iron DrillTimer 0
execute if score diamond DrillTimer >= Config_diamond DrillTimer run scoreboard players set diamond DrillTimer 0
execute if score netherite DrillTimer >= Config_netherite DrillTimer run scoreboard players set netherite DrillTimer 0
execute if score power DrillTimer >= Config_power DrillTimer run scoreboard players set power DrillTimer 0