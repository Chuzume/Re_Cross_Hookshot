#初期Motion0だったらタグ付与
execute store result score @s Chuz_F.Check_X run data get entity @s Motion[0] 1000
execute if score @s Chuz_F.Check_X matches -3..3 run tag @s add Chuz_NoX_Check

execute store result score @s Chuz_F.Check_Y run data get entity @s Motion[1] 1000
execute if score @s Chuz_F.Check_Y matches -79 run tag @s add Chuz_NoY_Check

execute store result score @s Chuz_F.Check_Z run data get entity @s Motion[2] 1000
execute if score @s Chuz_F.Check_Z matches -3..3 run tag @s add Chuz_NoZ_Check

tag @s[tag=!Chuz_No_F.Check] add Chuz_No_F.Check