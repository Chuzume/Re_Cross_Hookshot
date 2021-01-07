#コイツがいる間は次が撃てない
execute at @a if score @s ReCr_ScoreID = @p ReCr_P.ID run tag @p add ReCr_NoUse

#Hook_Tempタグで向き調整と速度設定
execute if entity @s[tag=ReCr_Hook_Temp] run function re_h.shot:entity/hook/rotate

#移動関連
execute if entity @s[tag=ReCr_Hook_True,tag=!ReCr_Hook_Temp] at @s run function re_h.shot:entity/hook/move_true
execute if entity @s[tag=ReCr_Hook_Basic,tag=!ReCr_Hook_Temp] at @s run function re_h.shot:entity/hook/move_basic

scoreboard players add @s BulletRemain 1
execute if score @s[tag=ReCr_Hook_Basic] BulletRemain matches 10 run function re_h.shot:entity/hook/kill
execute if score @s[tag=ReCr_Hook_True] BulletRemain matches 7 run function re_h.shot:entity/hook/kill

execute if entity @s[tag=ReCr_Hit_Heavy] run function re_h.shot:entity/hook/hit_heavy