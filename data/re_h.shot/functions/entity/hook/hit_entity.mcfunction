#ヒット Pulledを付けられると対象に移動
tag @e[type=!player,tag=!ReCr_Hook_Common,sort=nearest,limit=1] add ReCr_Pulled
execute if entity @s[tag=ReCr_Hook_True] run tag @e[type=!player,tag=!ReCr_Hook_Common,sort=nearest,limit=1] add ReCr_Pulled_True
execute if entity @s[tag=ReCr_Hook_Basic] run tag @e[type=!player,tag=!ReCr_Hook_Common,sort=nearest,limit=1] add ReCr_Pulled_Basic
scoreboard players operation @e[tag=ReCr_Pulled,limit=1,sort=nearest] ReCr_ScoreID = @s ReCr_ScoreID
scoreboard players reset @e[tag=ReCr_Pulled,limit=1,sort=nearest] BulletRemain

#右クリック解除モード
execute at @a if score @s ReCr_ScoreID = @p ReCr_P.ID run function re_h.shot:item/re_cross_hookshot/pull_mode

#共通
function re_h.shot:entity/hook/hit_common