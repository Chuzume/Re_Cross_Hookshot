
#スニークで解除
execute at @a if score @s ReCr_ScoreID = @p ReCr_P.ID run tag @p add ReCr_NoUse

#移動用AEC
execute at @e[type=armor_stand,tag=ReCr_Mover] if score @s[distance=3..] ReCr_ScoreID = @e[limit=1,sort=nearest] ReCr_ScoreID facing entity @s feet run tp @e[limit=1,sort=nearest] ~ ~ ~ ~ ~

#接近されたらタグ付与で解除
execute at @e[type=armor_stand,tag=ReCr_Mover,tag=!ReCr_NeedID,distance=..1.5] if score @s ReCr_ScoreID = @e[limit=1,sort=nearest] ReCr_ScoreID run tag @p add ReCr_Finish

#ヘヴィ版フックポイントは付近の対象に追従
execute if entity @s[tag=ReCr_HookPoint_Heavy] run tp @s @e[type=#re_h.shot:heavy,sort=nearest,limit=1]

#解除
execute at @a[tag=ReCr_Finish] if score @s ReCr_ScoreID = @p ReCr_P.ID run function re_h.shot:entity/hook_point/finish

#パーティクル
execute if entity @s[tag=ReCr_HookPoint_True] at @a if score @s ReCr_ScoreID = @p ReCr_P.ID facing entity @s feet run function re_h.shot:chain_particle
execute if entity @s[tag=ReCr_HookPoint_Basic] at @a if score @s ReCr_ScoreID = @p ReCr_P.ID facing entity @s feet run function re_h.shot:chain_particle_basic