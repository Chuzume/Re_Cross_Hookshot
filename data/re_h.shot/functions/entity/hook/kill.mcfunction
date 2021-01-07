execute if entity @s[tag=ReCr_Hook_True] at @a if score @s ReCr_ScoreID = @p ReCr_P.ID facing entity @s feet run function re_h.shot:chain_particle
execute if entity @s[tag=ReCr_Hook_Basic] at @a if score @s ReCr_ScoreID = @p ReCr_P.ID facing entity @s feet run function re_h.shot:chain_particle_basic
kill @s