#スコア加算
scoreboard players add @s BulletRemain 1

#スニークで解除
execute as @s[scores={BulletRemain=10..}] at @a[scores={ReCr_Sneak=0..}] if score @s ReCr_ScoreID = @p ReCr_P.ID run scoreboard players reset @p ReCr_FloatFuel
execute as @s[scores={BulletRemain=10..}] at @a[scores={ReCr_Sneak=0..}] if score @s ReCr_ScoreID = @p ReCr_P.ID run tag @p add ReCr_Finish
execute as @s[scores={BulletRemain=10..}] at @a[scores={ReCr_Sneak=0..}] if score @s ReCr_ScoreID = @p ReCr_P.ID run kill @s

#引き寄せ開始まではプレイヤーの場所にいる
execute if entity @s[scores={BulletRemain=..7}] at @a if score @s ReCr_ScoreID = @p ReCr_P.ID run tp @s ~ ~0.01 ~ ~ ~

#振り向き終了後に装備装着
execute if score @s BulletRemain matches 7 run function re_h.shot:entity/mover/equip

#加速していく
execute if entity @s[tag=ReCr_Mover_True] unless entity @s[scores={Chuz_Speed=26..}] run scoreboard players add @s Chuz_Speed 2
execute if entity @s[tag=ReCr_Mover_Basic] unless entity @s[scores={Chuz_Speed=20..}] run scoreboard players add @s Chuz_Speed 1

#張り付いてるなら移動終わったよタグを消す
execute positioned ~ ~1 ~ at @e[type=area_effect_cloud,tag=ReCr_HookPoint,distance=..3.5] if score @s ReCr_ScoreID = @e[limit=1,sort=nearest] ReCr_ScoreID run tag @p add ReCr_Finish

#ゲームモード取得
execute at @a if score @s ReCr_ScoreID = @p ReCr_P.ID run tag @p[gamemode=adventure] add ReCr_Formerly_Adv
execute at @a if score @s ReCr_ScoreID = @p ReCr_P.ID run tag @p[gamemode=survival] add ReCr_Formerly_Suv
execute at @a if score @s ReCr_ScoreID = @p ReCr_P.ID run tag @p[gamemode=creative] add ReCr_Formerly_Cre

#ゴリ押しスペクテイター
execute if entity @s[scores={BulletRemain=7}] at @a if score @s ReCr_ScoreID = @p ReCr_P.ID run function re_h.shot:entity/mover/to_spectator

#移動
execute if entity @s[tag=!HookFacing,scores={BulletRemain=7..}] run function re_h.shot:move
execute if entity @s[tag=!HookFacing,scores={BulletRemain=14..}] run function re_h.shot:col_check
execute if entity @s[scores={BulletRemain=14..}] run function re_h.shot:get_first_motion

playsound minecraft:entity.fishing_bobber.retrieve player @a ~ ~ ~ 1 0.5

#
execute if block ~ ~ ~ end_gateway run kill @s

#激突で解除
execute if entity @s[tag=Col_Hit] run tag @p add ReCr_Finish
kill @s[tag=Col_Hit]