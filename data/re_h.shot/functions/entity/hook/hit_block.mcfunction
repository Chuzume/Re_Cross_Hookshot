#ヒット
execute if entity @s[tag=ReCr_Hook_Basic] run summon area_effect_cloud ~ ~ ~ {Duration:1000,Radius:0f,Tags:[ReCr_HookPoint,ReCr_HookPoint_Basic]}
execute if entity @s[tag=ReCr_Hook_Basic] at @a if score @s ReCr_ScoreID = @p ReCr_P.ID run summon minecraft:armor_stand ~ ~ ~ {PortalCooldown:2147483647,Silent:1b,Invulnerable:1b,ShowArms:1b,Invisible:1b,NoBasePlate:1b,Tags:["ReCr_NeedID","ReCr_Mover","ReCr_Mover_Basic","WHB0"],Pose:{Body:[0f,-20f,0f],LeftArm:[-90f,35f,0f],RightArm:[-90f,-15f,15f],LeftLeg:[25f,25f,-10f],RightLeg:[15f,10f,0f],Head:[0f,0f,0f]},DisabledSlots:4144959}

execute if entity @s[tag=ReCr_Hook_True] run summon area_effect_cloud ~ ~ ~ {Duration:1000,Radius:0f,Tags:[ReCr_HookPoint,ReCr_HookPoint_True]}
execute if entity @s[tag=ReCr_Hook_True] at @a if score @s ReCr_ScoreID = @p ReCr_P.ID run summon minecraft:armor_stand ~ ~ ~ {PortalCooldown:2147483647,Silent:1b,Invulnerable:1b,ShowArms:1b,Invisible:1b,NoBasePlate:1b,Tags:["ReCr_NeedID","ReCr_Mover","ReCr_Mover_True","WHB0"],Pose:{Body:[0f,-20f,0f],LeftArm:[-90f,35f,0f],RightArm:[-90f,-15f,15f],LeftLeg:[25f,25f,-10f],RightLeg:[15f,10f,0f],Head:[0f,0f,0f]},DisabledSlots:4144959}

scoreboard players operation @e[tag=ReCr_HookPoint,sort=nearest,limit=1] ReCr_ScoreID = @s ReCr_ScoreID

tag @s add ReCr_NoPull

#共通
function re_h.shot:entity/hook/hit_common
