#プレイヤーのID
execute if entity @a[tag=!ReCr_HaveID,limit=1] run scoreboard players add $P.ID_Core ReCr_P.ID 1
execute as @a[tag=!ReCr_HaveID,limit=1] run scoreboard players operation @s ReCr_P.ID = $P.ID_Core ReCr_P.ID
tag @a[tag=!ReCr_HaveID,limit=1,scores={ReCr_P.ID=0..}] add ReCr_HaveID

#"ReCr_NeedID"タグ持ちにプレイヤーと同じIDを付与
#"ReCr_ScoreID"はプレイヤー由来のエンティティ限定
execute as @e[tag=ReCr_NeedID] at @s run scoreboard players operation @s ReCr_ScoreID = @p ReCr_P.ID
tag @e[tag=ReCr_NeedID] remove ReCr_NeedID