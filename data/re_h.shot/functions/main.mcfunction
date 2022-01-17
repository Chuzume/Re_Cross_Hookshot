
# ストレージパワー
    execute as @a at @s run function re_h.shot:storage

# フック
    execute as @e[tag=ReCr_Hook_Common,tag=!ReCr_NeedID] at @s run function re_h.shot:entity/hook/main

# 引き寄せ地点
    execute as @e[tag=ReCr_HookPoint] at @s run function re_h.shot:entity/hook_point/main

# 引き寄せられているエンティティ
    execute as @e[tag=ReCr_Pulled] at @s run function re_h.shot:entity/pulled/main

# 移動担当アマスタ
    execute as @e[tag=ReCr_Mover] at @s run function re_h.shot:entity/mover/main

# 引き寄せ移動
    execute as @a at @e[tag=ReCr_Mover,tag=!ReCr_NeedID,scores={BulletRemain=4..}] if score @s ReCr_P.ID = @e[tag=ReCr_Mover,limit=1,sort=nearest] ReCr_ScoreID run spectate @e[tag=ReCr_Mover,limit=1,sort=nearest] @s

# スコア、タグリセット
    scoreboard players reset @a[scores={ReCr_Crossbow=1..}] ReCr_Crossbow
    scoreboard players reset @a[scores={ReCr_Sneak=1..}] ReCr_Sneak
    tag @a remove ReCr_HoldHook

# スコアID
    function re_h.shot:score_id/player_score_id