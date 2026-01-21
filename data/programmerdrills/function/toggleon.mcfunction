tellraw @p [{"text":"Drill State: "},{text:"ON",color:green,bold:1b,underlined:1b}]
$data modify entity @n[distance=..1,tag=Drill,type=item_display] item.components.minecraft:item_model set value "$(path)_p"
playsound block.stone_button.click_on block @a ~ ~ ~