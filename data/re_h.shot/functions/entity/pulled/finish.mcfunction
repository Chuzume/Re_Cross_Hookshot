effect give @s slowness 1 10 true 
effect give @s weakness 1 10 true 
tag @s remove ReCr_Pulled
tag @s remove ReCr_Pulled_True
tag @s remove ReCr_Pulled_Basic
scoreboard players reset @s BulletRemain
scoreboard players reset @s Chuz_Speed
scoreboard players reset @s ReCr_ScoreID
playsound minecraft:entity.magma_cube.jump player @a ~ ~ ~ 1.5 1.1
tag @p remove ReCr_Pulling
