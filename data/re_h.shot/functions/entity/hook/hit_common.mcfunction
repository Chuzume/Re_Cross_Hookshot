particle minecraft:crit ^ ^ ^-1 0 0 0 0.5 5 force
execute at @a if score @s ReCr_ScoreID = @p ReCr_P.ID run playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 2 2
execute at @a if score @s ReCr_ScoreID = @p ReCr_P.ID run tag @p remove ReCr_NoUse
kill @s