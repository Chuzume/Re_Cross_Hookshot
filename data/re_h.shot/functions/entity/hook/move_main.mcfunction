teleport @s ^ ^ ^1
particle minecraft:crit ~ ~ ~ 0 0 0 0 1 force
execute if entity @s[tag=ReCr_Hook_True] run particle minecraft:dust 1 1 1 0.75 ~ ~ ~ 0 0 0 0 1 force
execute if entity @s[tag=ReCr_Hook_Basic] run particle minecraft:dust 0.9 0.7 0.5 0.75 ~ ~ ~ 0 0 0 0 1 force

#地形ヒット
execute at @s unless block ~ ~ ~ #re_h.shot:no_collision run function re_h.shot:entity/hook/hit_block

#引き寄せできる軽いエンティティにヒット
execute at @s[tag=!ReCr_NoPull] positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=!ReCr_Hook_Common,type=!player,dx=0,type=!#re_h.shot:cannot_hook,type=!#re_h.shot:heavy,tag=!ReCr_Mover] positioned ~0.5 ~0.5 ~0.5 run function re_h.shot:entity/hook/hit_entity

#こちらが引き寄せられる重いエンティティにヒット
execute at @s[tag=!ReCr_NoPull] positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[dx=0,tag=!ReCr_Hook_Common,type=#re_h.shot:heavy] positioned ~0.5 ~0.5 ~0.5 run tag @s add ReCr_Hit_Heavy
