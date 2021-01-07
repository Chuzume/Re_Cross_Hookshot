#移動
scoreboard players add @s BulletRemain 1
execute as @a at @e[tag=ReCr_Pulled] if score @s ReCr_P.ID = @e[limit=1,sort=nearest] ReCr_ScoreID facing entity @s feet as @e[limit=1,sort=nearest] run function re_h.shot:entity/pulled/move

#スピード設定
scoreboard players set @s[tag=ReCr_Pulled_True] Chuz_Speed 25
scoreboard players set @s[tag=ReCr_Pulled_Basic] Chuz_Speed 15

#引き寄せ中は撃てない
execute at @a if score @s ReCr_ScoreID = @p ReCr_P.ID run tag @p add ReCr_NoUse

#右クリックで引き寄せ解除
execute at @a[tag=ReCr_HoldHook,scores={ReCr_Crossbow=1..}] if score @s ReCr_ScoreID = @p ReCr_P.ID run function re_h.shot:entity/pulled/finish

#プレイヤーが近い、または時間が経つと引き寄せ解除
execute if score @s ReCr_ScoreID = @p[distance=..3] ReCr_P.ID run data merge entity @s {PickupDelay:40,FallDistance:0,Motion:[0.0,0.5,0.0]}
execute if score @s ReCr_ScoreID = @p[distance=..3] ReCr_P.ID run function re_h.shot:entity/pulled/finish
execute if entity @s[scores={BulletRemain=25}] at @a if score @s ReCr_ScoreID = @p ReCr_P.ID run function re_h.shot:entity/pulled/finish

#
execute if entity @s[tag=ReCr_Pulled_True] at @a if score @s ReCr_ScoreID = @p ReCr_P.ID facing entity @s feet run function re_h.shot:chain_particle
execute if entity @s[tag=ReCr_Pulled_Basic] at @a if score @s ReCr_ScoreID = @p ReCr_P.ID facing entity @s feet run function re_h.shot:chain_particle_basic
