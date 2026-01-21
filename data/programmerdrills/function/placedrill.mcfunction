playsound block.copper.place block @a ~ ~ ~
$summon item_display ~.5 ~.5 ~.5 {item:{id:music_disc_lava_chicken,components:$(components)},Tags:["Drill"]}
summon minecraft:interaction ~.5 ~ ~.5 {Tags:["DrillHitbox"],width:1,height:1,response:1b}
kill @s