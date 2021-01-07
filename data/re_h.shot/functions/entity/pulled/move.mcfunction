tp @s ~ ~ ~ ~ ~
function re_h.shot:move
execute at @a if score @s ReCr_ScoreID = @p ReCr_P.ID run playsound minecraft:entity.fishing_bobber.retrieve player @a ~ ~ ~ 1 0.5