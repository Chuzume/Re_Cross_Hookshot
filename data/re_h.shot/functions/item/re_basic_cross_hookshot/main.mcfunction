
#持っていればタグ
tag @s add ReCr_HoldHook

#スニークでフロート
execute if entity @s[tag=!ReCr_Pulling,scores={ReCr_Sneak=1..},nbt={OnGround:0b},nbt=!{ActiveEffects:[{Id:25b,Amplifier:20b,Duration:1}]}] unless entity @s[scores={ReCr_FloatFuel=41..}] run function re_h.shot:item/re_basic_cross_hookshot/float

#フロート残量
execute if entity @s[scores={ReCr_FloatFuel=20,ReCr_Sneak=1..}] run playsound minecraft:block.note_block.pling player @p ~ ~ ~ 1 2
execute if entity @s[scores={ReCr_FloatFuel=30,ReCr_Sneak=1..}] run playsound minecraft:block.note_block.pling player @p ~ ~ ~ 1 2
execute if entity @s[scores={ReCr_FloatFuel=40,ReCr_Sneak=1..}] run playsound minecraft:block.fire.extinguish player @a ~ ~ ~ 1 1
execute if entity @s[scores={ReCr_FloatFuel=40,ReCr_Sneak=1..}] run particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.05 20

#

#着地でリセット
scoreboard players reset @a[nbt={OnGround:1b}] ReCr_FloatFuel

#フック発射
execute if entity @s[tag=!ReCr_NoUse,scores={ReCr_Crossbow=1..}] run function re_h.shot:item/re_basic_cross_hookshot/shot

#リロード
execute if entity @s[tag=!ReCr_NoUse] run function re_h.shot:item/re_basic_cross_hookshot/reload

#緊急回復
execute unless entity @s[scores={ReCr_Crossbow=1..}] run function re_h.shot:item/re_cross_hookshot/pull_finish