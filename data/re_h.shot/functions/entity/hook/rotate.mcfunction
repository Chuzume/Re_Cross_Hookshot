execute store result entity @s Rotation[0] float 1 run data get entity @p Rotation[0]
execute store result entity @s Rotation[1] float 1 run data get entity @p Rotation[1]
execute as @p at @s anchored eyes run tp @e[tag=ReCr_Hook_Temp,limit=1,sort=nearest] ^ ^ ^
tag @s remove ReCr_Hook_Temp