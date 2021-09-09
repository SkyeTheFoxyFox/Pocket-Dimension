scoreboard players set @a SF_pocket_yn 0
execute as @a at @s in sfpocket:pocket if entity @p[distance=..1] run tag @s add SF_pocket_in
execute as @a at @s in sfpocket:pocket unless entity @p[distance=..1] run tag @s add SF_pocket_out
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:136}}},tag=SF_pocket_out] if score @s SF_pocket_use matches 1.. store result score @s SF_pocket_id run data get entity @s SelectedItem.tag.SFpocketid
execute as @e[type=minecraft:marker,name=SF_pocket] store result score @s SF_pocket_id run data get entity @s data.SFpocketid


execute in sfpocket:pocket as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:136}}}] if score @s SF_pocket_use matches 1.. at @e[type=minecraft:marker,name=SF_pocket] if score @e[distance=..1,type=minecraft:marker,limit=1,name=SF_pocket] SF_pocket_id = @s SF_pocket_id run scoreboard players set @s SF_pocket_yn 1
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:136}}}] if score @s SF_pocket_use matches 1.. at @s if score @s SF_pocket_yn matches 1 run tag @s add SF_pocket_yes
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:136}}}] if score @s SF_pocket_use matches 1.. at @s if score @s SF_pocket_yn matches 0 run tag @s add SF_pocket_no

execute as @a[tag=SF_pocket_no,tag=SF_pocket_out] in sfpocket:pocket run summon marker 0 0 0 {CustomName:'{"text":"SF_pocket"}'}
execute as @a[tag=SF_pocket_no,tag=SF_pocket_out] in sfpocket:pocket positioned 0 0 0 run tag @e[type=minecraft:marker,name=SF_pocket,distance=..1,limit=1] add SF_pocket_target
execute as @a[tag=SF_pocket_no,tag=SF_pocket_out] in sfpocket:pocket positioned 0 0 0 run data modify entity @e[type=minecraft:marker,name=SF_pocket,distance=..1,limit=1] data.SFpocketid set from entity @s SelectedItem.tag.SFpocketid
execute as @a[tag=SF_pocket_no,tag=SF_pocket_out] in sfpocket:pocket positioned 0 0 0 store result entity @e[type=minecraft:marker,name=SF_pocket,distance=..1,limit=1] Pos[0] double 32 run scoreboard players get @s SF_pocket_id
execute as @a[tag=SF_pocket_no,tag=SF_pocket_out] in sfpocket:pocket at @e[type=minecraft:marker,name=SF_pocket,tag=SF_pocket_target] run fill ~-1 ~ ~-1 ~16 ~17 ~16 bedrock hollow
execute as @a[tag=SF_pocket_no,tag=SF_pocket_out] in sfpocket:pocket at @e[type=minecraft:marker,name=SF_pocket,tag=SF_pocket_target] run forceload add ~ ~ ~16 ~

execute as @e[type=minecraft:marker,name=SF_pocket] store result score @s SF_pocket_id run data get entity @s data.SFpocketid


execute as @a[tag=SF_pocket_out,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:136}}}] at @s if score @s SF_pocket_use matches 1.. run summon marker ~ ~ ~ {CustomName:'{"text":"SF_pocket_pos"}'}
execute as @a[tag=SF_pocket_out,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:136}}}] at @s if score @s SF_pocket_use matches 1.. run data modify entity @e[type=minecraft:marker,name=SF_pocket_pos,distance=..1,sort=nearest,limit=1] data.SF_pocket_uuid set from entity @s UUID
execute as @a[tag=SF_pocket_out,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:136}}}] at @s if score @s SF_pocket_use matches 1.. run forceload add ~ ~ ~ ~
execute as @a[tag=SF_pocket_out,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:136}}}] if score @s SF_pocket_use matches 1.. in sfpocket:pocket at @e[type=minecraft:marker,name=SF_pocket] if score @e[type=minecraft:marker,distance=..1,limit=1,name=SF_pocket] SF_pocket_id = @s SF_pocket_id run tp @s ~1.5 ~2 ~1 -45 ~




#execute as @a[tag=SF_pocket_in,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:136}}}] at @s if score @s SF_pocket_use matches 1.. run

execute as @a store result score @s SF_pocket_uuid run data get entity @s UUID[0] 1
execute as @e[type=minecraft:marker,name=SF_pocket_pos] store result score @s SF_pocket_uuid run data get entity @s data.SF_pocket_uuid[0] 1
execute as @a[tag=SF_pocket_in,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:136}}}] in minecraft:overworld at @e[type=minecraft:marker,name=SF_pocket_pos] if score @s SF_pocket_use matches 1.. if score @s SF_pocket_uuid = @e[type=marker,name=SF_pocket_pos,distance=..1,limit=1] SF_pocket_uuid run tag @e[type=marker,name=SF_pocket_pos,distance=..1,limit=1] add SF_pocket_uuid_0

execute as @a store result score @s SF_pocket_uuid run data get entity @s UUID[1] 1
execute as @e[type=minecraft:marker,name=SF_pocket_pos] store result score @s SF_pocket_uuid run data get entity @s data.SF_pocket_uuid[1] 1
execute as @a[tag=SF_pocket_in,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:136}}}] in minecraft:overworld at @e[type=minecraft:marker,name=SF_pocket_pos] if score @s SF_pocket_use matches 1.. if score @s SF_pocket_uuid = @e[type=marker,name=SF_pocket_pos,distance=..1,limit=1] SF_pocket_uuid run tag @e[type=marker,name=SF_pocket_pos,distance=..1,limit=1] add SF_pocket_uuid_1

execute as @a store result score @s SF_pocket_uuid run data get entity @s UUID[2] 1
execute as @e[type=minecraft:marker,name=SF_pocket_pos] store result score @s SF_pocket_uuid run data get entity @s data.SF_pocket_uuid[2] 1
execute as @a[tag=SF_pocket_in,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:136}}}] in minecraft:overworld at @e[type=minecraft:marker,name=SF_pocket_pos] if score @s SF_pocket_use matches 1.. if score @s SF_pocket_uuid = @e[type=marker,name=SF_pocket_pos,distance=..1,limit=1] SF_pocket_uuid run tag @e[type=marker,name=SF_pocket_pos,distance=..1,limit=1] add SF_pocket_uuid_2

execute as @a store result score @s SF_pocket_uuid run data get entity @s UUID[3] 1
execute as @e[type=minecraft:marker,name=SF_pocket_pos] store result score @s SF_pocket_uuid run data get entity @s data.SF_pocket_uuid[3] 1
execute as @a[tag=SF_pocket_in,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:136}}}] in minecraft:overworld at @e[type=minecraft:marker,name=SF_pocket_pos] if score @s SF_pocket_use matches 1.. if score @s SF_pocket_uuid = @e[type=marker,name=SF_pocket_pos,distance=..1,limit=1] SF_pocket_uuid run tag @e[type=marker,name=SF_pocket_pos,distance=..1,limit=1] add SF_pocket_uuid_3

execute as @a[tag=SF_pocket_in,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:136}}}] at @s if score @s SF_pocket_use matches 1.. run tp @s @e[type=marker,name=SF_pocket_pos,tag=SF_pocket_uuid_0,tag=SF_pocket_uuid_1,tag=SF_pocket_uuid_2,tag=SF_pocket_uuid_3,limit=1]
execute as @a[tag=SF_pocket_in,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:136}}}] at @s if score @s SF_pocket_use matches 1.. run forceload remove ~ ~ ~ ~
execute as @a[tag=SF_pocket_in,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:136}}}] at @s if score @s SF_pocket_use matches 1.. run kill @e[type=marker,name=SF_pocket_pos,tag=SF_pocket_uuid_0,tag=SF_pocket_uuid_1,tag=SF_pocket_uuid_2,tag=SF_pocket_uuid_3,limit=1]

execute as @e[type=minecraft:marker,name=SF_pocket] at @s run fill ~ ~ ~ ~15 ~15 ~15 air replace #minecraft:beds[part=foot]

scoreboard players set @a SF_pocket_use 0
tag @a remove SF_pocket_yes
tag @a remove SF_pocket_no
tag @e remove SF_pocket_target
tag @a remove SF_pocket_in
tag @a remove SF_pocket_out
tag @e remove SF_pocket_uuid_0
tag @e remove SF_pocket_uuid_1
tag @e remove SF_pocket_uuid_2
tag @e remove SF_pocket_uuid_3