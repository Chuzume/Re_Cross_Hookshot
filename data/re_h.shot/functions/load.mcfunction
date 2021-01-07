
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

#declare tag Chuz_NoX_Check
#declare tag Chuz_NoY_Check
#declare tag Chuz_NoZ_Check
#declare tag Chuz_No_F.Check
#declare tag Chuz_Vector0
#declare tag Col_Hit
#declare tag Custom_Crafter_Crafting
#declare tag Custom_Crafter_Succes
#declare tag HookFacing
#declare tag ReCr_Finish
#declare tag ReCr_FloatFuel
#declare tag ReCr_Formerly_Adv
#declare tag ReCr_Formerly_Cre
#declare tag ReCr_Formerly_Suv
#declare tag ReCr_HaveID
#declare tag ReCr_Hit_Heavy
#declare tag ReCr_HoldHook
#declare tag ReCr_Hook0
#declare tag ReCr_HookPoint
#declare tag ReCr_HookPoint_Basic
#declare tag ReCr_HookPoint_Heavy
#declare tag ReCr_HookPoint_Mob
#declare tag ReCr_HookPoint_True
#declare tag ReCr_Hook_Basic
#declare tag ReCr_Hook_Common
#declare tag ReCr_Hook_True
#declare tag ReCr_Mover
#declare tag ReCr_MoverNow
#declare tag ReCr_Mover_Basic
#declare tag ReCr_Mover_True
#declare tag ReCr_NeedID
#declare tag ReCr_NoPull
#declare tag ReCr_NoUse
#declare tag ReCr_Pulled
#declare tag ReCr_Pulled_Basic
#declare tag ReCr_Pulled_True
#declare tag ReCr_Pulling