##
 # recipe.mcfunction
 # 
 #
 # Created by .
##
summon item ~ ~ ~ {Tags:["SFcrafting"],Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Pocket Key","color":"light_purple","italic":false}',Lore:['{"text":"Use to enter a custom pocket dimension","color":"white","italic":false}']},CustomModelData:136,SFpocketid:0}}}
execute as @e[distance=..1,tag=SFcrafting] store result entity @s Item.tag.SFpocketid int 1 run scoreboard players get Count SF_pocket_craft

scoreboard players add Count SF_pocket_craft 1

clear @s minecraft:knowledge_book 1
recipe take @s sfpocket:pocket