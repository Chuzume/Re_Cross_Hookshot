
#時たま使い回されるスコアボード
scoreboard objectives add Col_Check_X dummy
scoreboard objectives add Col_Check_Y dummy
scoreboard objectives add Col_Check_Z dummy

scoreboard objectives add Chuz_F.Check_X dummy
scoreboard objectives add Chuz_F.Check_Z dummy
scoreboard objectives add Chuz_F.Check_Y dummy

scoreboard objectives add Chuz_Speed dummy
scoreboard objectives add Chuz_Calc dummy
scoreboard objectives add BulletRemain dummy

#このデータパック特有のスコアボード
scoreboard objectives add ReCr_P.ID dummy
scoreboard objectives add ReCr_ScoreID dummy
scoreboard objectives add ReCr_ScoreID dummy
scoreboard objectives add ReCr_Crossbow minecraft.used:minecraft.crossbow
scoreboard objectives add ReCr_Sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add ReCr_FloatFuel dummy
scoreboard objectives add ReCr_Install dummy

#フォースロード
forceload add 0 0 0 0

#Chuz_Vector0が存在しなければ召喚
execute unless entity @e[type=area_effect_cloud,tag=Chuz_Vector0] run summon minecraft:area_effect_cloud 0 0 0 {Tags:["Chuz_Vector0"],Duration:-1,Age:-2147483648,WaitTime:-2147483648}
