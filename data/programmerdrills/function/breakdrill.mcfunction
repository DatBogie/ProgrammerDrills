execute align xyz run particle block{block_state:{Name:copper_block}} ~.5 ~.5 ~.5 0 0 0 1 64
playsound block.copper.break block @a ~ ~ ~
kill @n[distance=..2,tag=Drill,type=item_display]
$summon item ~ ~.5 ~ {Item:{id:music_disc_lava_chicken,count:1,components:$(components)},PickupDelay:10,Tags:["DroppedDrill"]}
kill @s