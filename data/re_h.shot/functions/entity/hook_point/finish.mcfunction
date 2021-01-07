#
scoreboard players reset @e[tag=ReCr_HookPoint_Mob,limit=1,sort=nearest,distance=..1] ReCr_ScoreID
tag @e[tag=ReCr_HookPoint_Mob,limit=1,sort=nearest,distance=..1] remove ReCr_HookPoint_Mob

#ゲームモードを戻す
gamerule sendCommandFeedback false
gamemode adventure @p[tag=ReCr_Formerly_Adv,distance=..1]
gamemode survival @p[tag=ReCr_Formerly_Suv,distance=..1]
gamemode survival @p[tag=ReCr_Formerly_Cre,distance=..1]
gamemode creative @p[tag=ReCr_Formerly_Cre,distance=..1]
tag @p[tag=ReCr_Formerly_Adv,distance=..1] remove ReCr_Formerly_Adv
tag @p[tag=ReCr_Formerly_Suv,distance=..1] remove ReCr_Formerly_Suv
tag @p[tag=ReCr_Formerly_Cre,distance=..1] remove ReCr_Formerly_Cre
gamerule sendCommandFeedback true

#解除ジャンプ
tp @p @p
execute at @a[tag=ReCr_Finish] if score @s ReCr_ScoreID = @p ReCr_P.ID run tag @p remove ReCr_Finish
scoreboard players reset @p ReCr_FloatFuel
kill @e[tag=ReCr_Mover,limit=1,sort=nearest]
data merge entity @s {Duration:1}
playsound minecraft:entity.zombie.infect player @a ~ ~ ~ 1 2
summon area_effect_cloud ~ ~ ~ {Radius:0f,Duration:6,Age:4,Effects:[{Id:25b,Amplifier:20b,Duration:5,ShowParticles:0b}]}
tag @p remove ReCr_MoverNow