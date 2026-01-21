tellraw @p [{"text":"Drill State: "},{text:"OFF",color:red,bold:1b,underlined:1b}]
$data modify entity @n[distance=..1,tag=Drill,type=item_display] item.components.minecraft:item_model set value "$(path)"
playsound block.stone_button.click_off block @a ~ ~ ~