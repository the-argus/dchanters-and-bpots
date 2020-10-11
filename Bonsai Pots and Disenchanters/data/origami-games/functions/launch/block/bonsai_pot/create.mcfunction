#@s - bonsai pot summon stand
#called by launch/tick

#teleport stand upwards in case its on a chest
tp @s ~ ~0.2 ~

#kill summon stand
kill @s[type=!player]

#create bonsai_pot
setblock ~ ~ ~ hopper[facing=down]{CustomName:'{"translate":"block.launch.bonsai_pot"}'} keep
execute unless block ~ ~ ~ hopper{CustomName:'{"translate":"block.launch.bonsai_pot"}'} run loot spawn ~ ~ ~ loot origami-games:launch/items/bonsai_pot
execute align y run summon armor_stand ~ ~.375 ~ {Tags:["lch_entity","lch_fire","lch_crafter","lch_bonsai_pot"],NoGravity:1,Silent:1,Small:1,Marker:1,Invisible:1,CustomNameVisible:0,CustomName:'{"translate":"block.launch.bonsai_pot"}',Fire:17}
loot replace entity @e[type=armor_stand,tag=lch_bonsai_pot,distance=...1,sort=nearest,limit=1] armor.head loot origami-games:launch/items/bonsai_pot
