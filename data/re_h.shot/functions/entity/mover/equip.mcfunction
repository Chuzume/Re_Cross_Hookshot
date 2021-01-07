execute as @a at @e[tag=ReCr_Mover] if score @s ReCr_P.ID = @e[sort=nearest,limit=1] ReCr_ScoreID run loot replace entity @e[sort=nearest,limit=1] armor.head loot re_h.shot:head_copy
data modify entity @s Invisible set value 0b
replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{color:9865818}}
replaceitem entity @s armor.legs minecraft:leather_leggings{display:{color:5390364}}
replaceitem entity @s armor.feet minecraft:leather_boots{display:{color:9865818}}
replaceitem entity @s[tag=ReCr_Mover_True] weapon.mainhand minecraft:crossbow{CustomModelData:7,Charged:0b}
replaceitem entity @s[tag=ReCr_Mover_Basic] weapon.mainhand minecraft:crossbow{CustomModelData:8,Charged:0b}